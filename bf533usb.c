/*
 * bf533usb.c
 *
 *  Created on: 24.10.2010
 *      Author: Michal Salat
 */

#include <linux/module.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/kdev_t.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/ioport.h>
#include <linux/io.h>
#include <linux/interrupt.h>
#include <linux/platform_device.h>
#include <linux/tty.h>
#include <linux/tty_driver.h>
#include <linux/tty_flip.h>
#include <asm/uaccess.h>
#include <asm/gpio.h>

#define BFMOD_MAJ 0; //dynamic MAJOR number allocation
MODULE_DESCRIPTION("Cypress USB driver for BF533 custom board");
MODULE_AUTHOR("Michal Salat");
MODULE_LICENSE("GPL");
MODULE_VERSION("0.0.1");
unsigned USB_ADDRESS;
unsigned EP_FLAG_EMPTY,EP_FLAG_FULL;
unsigned USB_ADR_0,USB_ADR_1,PKTEND;

#define BFIN_USB_DEV_NAME "ttyUSB"
#define BFIN_USB_DRIVER_NAME "bfin-visor-usb"
#define EP_OUT_BUFFER_SIZE 2048

dev_t bfmod_num;

struct bfmod_dev
{
        struct tty_struct *tty;
	struct semaphore sem;
	char *out_buf;
	u8 __iomem *mem;
	size_t first, last, size, cnt;
        int open_cnt;
        struct timer_list *timer;
};

//Device structure from board config
struct platform_device *my_phys_dev;

struct bfmod_dev *bfmod_devs;
struct tty_driver *bfin_usb_tty;

irqreturn_t bfmod_irqhandler(int irq, void *ptr)
{
	struct bfmod_dev *dev;
	struct tty_struct *tty;
	if (irq != GPIO_IRQ_BASE + EP_FLAG_EMPTY) return IRQ_NONE;
	if (ptr == NULL) return IRQ_NONE;
	if (ptr != bfmod_devs) printk(KERN_INFO "Nesouhlasi pointery!");
	dev = ptr;
	gpio_set_value(USB_ADR_0, 0);
	gpio_set_value(USB_ADR_1, 0);

	if (dev->open_cnt <= 0)
	  {
	    while (gpio_get_value(EP_FLAG_EMPTY))
	      {
		printk(KERN_INFO "%c",ioread8(dev->mem));
		SSYNC;
	      }
	    return IRQ_HANDLED;
	  }
	tty = dev->tty;
	while (gpio_get_value(EP_FLAG_EMPTY))
	{
	  //if (tty->buf.tail->used >=tty->buf.tail->size)
	  //tty_flip_buffer_push(tty);
	  tty_insert_flip_char(tty,ioread8(dev->mem),TTY_NORMAL);
	}
	//	tty_flip_buffer_push(tty);
	return IRQ_HANDLED;
}

static int bfmod_open(struct tty_struct *tty, struct file *filp)
{
	bfmod_devs->open_cnt++;
	down(&(bfmod_devs->sem));
	bfmod_devs->tty=tty;
	tty->driver_data = bfmod_devs;	
	tty->low_latency = 1;
	up(&(bfmod_devs->sem));

	return 0;
}

void bfmod_release(struct tty_struct *tty, struct file *filp)
{
  down(&(bfmod_devs->sem));
  bfmod_devs->open_cnt--;
  if (bfmod_devs->open_cnt <0) bfmod_devs->open_cnt = 0;
  up(&(bfmod_devs->sem));
}

static int bfmod_write(struct tty_struct *tty, const unsigned char *buffer, int count)
{
  int i;
  struct bfmod_dev *dev = tty->driver_data;
  i=-EINVAL;
  if (dev != NULL)
    {
      down(&dev->sem);
      if (dev->open_cnt == 0)
	{
	  up(&dev->sem);
	  return -EINVAL;
	}

      gpio_set_value(USB_ADR_0, 0);
      gpio_set_value(USB_ADR_1, 1); //EndPoint 6
      gpio_set_value(PKTEND,1);
      SSYNC();

      while (gpio_get_value(EP_FLAG_FULL) && i<count) //full flag je pri log.0
	{
	  iowrite8(*(buffer+i),dev->mem);
	  SSYNC();
	  i++;
	}
      gpio_set_value(PKTEND,0);
      ioread8(dev->mem);
      SSYNC();
      gpio_set_value(PKTEND,1);
      ioread8(dev->mem);
      SSYNC();
      up(&(dev->sem));
      return i;
    }
  return -EINVAL;
}

static int bfmod_write_room(struct tty_struct *tty)
{
  int res = -EINVAL;
  struct bfmod_dev *dev = tty->driver_data;
  if ( dev != NULL)
    {
      down(&(dev->sem));
      if (dev->open_cnt > 0)
	res = EP_OUT_BUFFER_SIZE;
      up(&(dev->sem));
    }
  return res;  
}

    

static struct tty_operations bfin_serial_ops = {
    .open = bfmod_open,
    .close = bfmod_release,
    .write = bfmod_write,
    .write_room = bfmod_write_room,
};

struct gpio address_gpios[] = {
	{ GPIO_PF8, GPIOF_OUT_INIT_LOW,  "Address0" }, /* default to OFF */
	{ GPIO_PF9, GPIOF_OUT_INIT_HIGH,  "Address1"   }, /* default to ON */
	{ GPIO_PF10, GPIOF_OUT_INIT_HIGH, "PacketEnd"},
	{ GPIO_PF7, GPIOF_IN, "EndpointFull"},
	{ GPIO_PF6, GPIOF_IN, "EndpointEmpty"},
	// Nastavenim volime endpoint 6 (vystupni)
};

static int visor_usb_probe(struct platform_device *visor_usb_device)
{
	int res;
	u8 __iomem *mem;
	struct resource *rc;

	res = -ENODEV;
	//Device structure Allocation
	bfmod_devs = kmalloc(sizeof(struct bfmod_dev), GFP_KERNEL);
	if (!bfmod_devs)
	{
		res = -ENOMEM;
		goto alloc_failed;
	}

	/* Set some basic things in bfmod_devs structure */
	bfmod_devs->open_cnt = 0;
	bfmod_devs->timer = NULL;

	/* Mutex protects input buffer */
	init_MUTEX(&bfmod_devs->sem);

	/* Allocate input buffer */
	bfmod_devs->out_buf = kmalloc(1024, GFP_KERNEL);
	if (bfmod_devs->out_buf == NULL)
	{
		res = -ENOMEM;
		goto add_failed;
	}

	bfmod_devs->size = ksize(bfmod_devs->out_buf);
	bfmod_devs->first = 0;
	bfmod_devs->last = 0;
	bfmod_devs->cnt = 0;

	// here starts memory initialization (ports & iomem)
	if (visor_usb_device == 0) 
	  {
	    printk(KERN_INFO "Null Pointer visor_usb_device");
	    goto add_failed;
	  }

	/* Address of memmory, where the cypress device is mapped to 
	   please refer to /arch/blackfin/mach-bf533/visor.c for the
	   resource[] item meanings
	 */
	USB_ADDRESS = visor_usb_device->resource[0].start;

	/* Request device IO memory region */

	rc = request_mem_region(USB_ADDRESS, 4,"bf533usb");
	if (rc==NULL)
	{
		res = -ENOLCK;
		goto add_failed;
	}

	/* Map it as IO mem - that means no caching */

	mem=ioremap_nocache(USB_ADDRESS,4);
	if (mem==NULL)
			{
				res = -ENOLCK;
				goto remap_failed;
			}

	bfmod_devs->mem = mem;

	/* Prepare GPIO_ARRAY */
	address_gpios[0].gpio = visor_usb_device->resource[4].start;
	address_gpios[1].gpio = visor_usb_device->resource[5].start;
	address_gpios[2].gpio = visor_usb_device->resource[6].start;
	address_gpios[3].gpio = visor_usb_device->resource[2].start;
	address_gpios[4].gpio = visor_usb_device->resource[3].start;

	/* Set EP_FLAG_EMPTY for future use*/
	EP_FLAG_EMPTY = visor_usb_device->resource[3].start;
	EP_FLAG_FULL = visor_usb_device->resource[2].start;
	USB_ADR_0 = visor_usb_device->resource[4].start;
	USB_ADR_1 = visor_usb_device->resource[5].start;
	PKTEND = visor_usb_device->resource[6].start;

	/* Request GPIOs */
	res=gpio_request_array(address_gpios,ARRAY_SIZE(address_gpios));
	if (res) goto add_failed;

	gpio_set_value(PKTEND,1);
	my_phys_dev = visor_usb_device;
	printk(KERN_INFO "bf533usb: Device probe ok!");
	return 0;

//Something went wrong during initialization of the driver
// shutting down!
	remap_failed:
		release_mem_region(USB_ADDRESS, 4);
        add_failed:
		kfree(bfmod_devs);				
	alloc_failed: 
		return res;
}

static int __devexit visor_usb_remove(struct platform_device *dev)
{
	gpio_free_array(address_gpios,ARRAY_SIZE(address_gpios));
	iounmap(bfmod_devs->mem);
	release_mem_region(USB_ADDRESS, 4);
	kfree(bfmod_devs->out_buf);
	kfree(bfmod_devs);
	printk(KERN_INFO "bf533usb: Device succesfully removed!\n");
	return 0;
}

static struct platform_driver visor_usb_driver = {
  .probe = visor_usb_probe,
  .remove = visor_usb_remove,
  .driver = {
    .name = BFIN_USB_DRIVER_NAME,
    .owner = THIS_MODULE,
  }
};



static int __init visor_usb_init(void)
{
  int res;
  int bfmod_major = BFMOD_MAJ;

  /* Register Platform Driver ~ call the visor_usb_probe function */
  printk(KERN_INFO "Registering Platform Driver\n");
  res  = platform_driver_register(&visor_usb_driver);
  if (res)
    return res;
  
  /* Major number dynamic allocation 
  printk(KERN_INFO "Alloc major\n");
  if (bfmod_major)
    {
      bfmod_num = MKDEV(bfmod_major,0);
      res = register_chrdev_region(bfmod_num, 1, "bf533usb");
    }
  else
    {
      bfmod_num = 0;
      res = alloc_chrdev_region(&bfmod_num, MINOR(bfmod_num), 1, "bf533usb");
    }
  if (res < 0) goto alloc_failed;
  */	
	/* allocate the tty driver */
    printk(KERN_INFO "Alloc minor\n");
	bfin_usb_tty = alloc_tty_driver(1);
	if (!bfin_usb_tty) return -ENOMEM;

	/* initialize the tty driver */
  printk(KERN_INFO "Driver init conf\n");
	bfin_usb_tty->owner = THIS_MODULE;
	bfin_usb_tty->driver_name = BFIN_USB_DRIVER_NAME;
	bfin_usb_tty->name = BFIN_USB_DEV_NAME;
       	bfin_usb_tty->major = MAJOR(bfmod_num),
	bfin_usb_tty->type = TTY_DRIVER_TYPE_SERIAL,
	bfin_usb_tty->subtype = SERIAL_TYPE_NORMAL,
	bfin_usb_tty->flags = TTY_DRIVER_RESET_TERMIOS | TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV,
	bfin_usb_tty->init_termios = tty_std_termios;
	bfin_usb_tty->init_termios.c_cflag = B57600 | CS8 | CREAD | HUPCL | CLOCAL;
	tty_set_operations(bfin_usb_tty, &bfin_serial_ops);

	/* register the tty driver */
  printk(KERN_INFO "tty register\n");
	res = tty_register_driver(bfin_usb_tty);
	if (res < 0) {
	  goto tty_register_failed;
	}

	/*Assign tty to our platform device and make devfs record*/
	  printk(KERN_INFO "tty assign\n");
	  tty_register_device(bfin_usb_tty, 0, &(my_phys_dev->dev));
	  printk(KERN_INFO "IRQ\n");
	res = request_irq(GPIO_IRQ_BASE + EP_FLAG_EMPTY,bfmod_irqhandler,IRQF_SHARED,"bf533usb", bfmod_devs);
	if (res < 0) goto tty_register_failed;

	printk(KERN_INFO "Init OK\n");
	return 0;	

put_tty_driver(bfin_usb_tty);
 tty_register_failed:

 alloc_failed:
	return -1;
}

static void __exit visor_usb_exit(void)
{
  tty_unregister_device(bfin_usb_tty, 0);
  tty_unregister_driver(bfin_usb_tty);
  free_irq(GPIO_IRQ_BASE + EP_FLAG_EMPTY, bfmod_devs);
  platform_driver_unregister(&visor_usb_driver);
}

module_init(visor_usb_init)
;
module_exit(visor_usb_exit)
;
