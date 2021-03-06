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
#inclued <linux/console.h>
#include <asm/uaccess.h>
#include <asm/gpio.h>

#define BFMOD_MAJ 0; //dynamic MAJOR number allocation
MODULE_DESCRIPTION("Cypress USB driver for BF533 custom board");
MODULE_AUTHOR("Michal Salat");
MODULE_LICENSE("GPL");
MODULE_VERSION("0.0.1");
int USB_ADDRESS;

/* USB CY7C68013 configuration */
#define EP_FLAG_FULL  GPIO_PF6
#define EP_FLAG_EMPTY GPIO_PF7
#define USB_ADR_0 GPIO_PF8
#define USB_ADR_1 GPIO_PF9
#define PKTEND GPIO_PF10

#define BFIN_USB_DEV_NAME "ttyUSB"
#define BFIN_USB_DRIVE_NAME "bfin-visor-usb"

dev_t bfmod_num;

struct bfmod_dev
{
	struct cdev cdev;
	struct mutex mt;
	char *out_buf;
	u8 __iomem *mem;
	size_t first, last, size, cnt;
};

struct bfmod_dev *bfmod_devs;

static struct class *visor_usb;

static struct gpio address_gpios[] = {
	{ USB_ADR_0, GPIOF_OUT_INIT_LOW,  "Address0" }, /* default to OFF */
	{ USB_ADR_1, GPIOF_OUT_INIT_HIGH,  "Address1"   }, /* default to ON */
	{ PKTEND, GPIOF_OUT_INIT_HIGH, "PacketEnd"},
	{ EP_FLAG_FULL, GPIOF_IN, "EndpointFull"},
	{ EP_FLAG_EMPTY, GPIOF_IN, "EndpointEmpty"},
	// Nastavenim volime endpoint 6 (vystupni)
};

irqreturn_t bfmod_irqhandler(int irq, void *ptr)
{
	struct bfmod_dev *dev;
	if (irq != GPIO_IRQ_BASE + EP_FLAG_EMPTY) return IRQ_NONE;

	if (ptr != bfmod_devs) printk(KERN_INFO "Nesouhlasi pointery!");
	dev = ptr;
	gpio_set_value(USB_ADR_0, 0);
	gpio_set_value(USB_ADR_1, 0);
	while (gpio_get_value(EP_FLAG_EMPTY))
	{
		printk(KERN_INFO "%c",ioread8(dev->mem));
	}
	printk(KERN_INFO "\n");
	return IRQ_HANDLED;
}

int bfmod_open(struct inode *inode, struct file *filp)
{
	struct bfmod_dev *dev;
	dev = container_of(inode->i_cdev, struct bfmod_dev, cdev);
	filp->private_data = dev;
	return 0;
}

int bfmod_release(struct inode *inode, struct file *filp)
{
	/*
	 * if there is allocation in bfmod_open, dealloc should go right here
	 */
	return 0;
}

ssize_t bfmod_read(struct file *filp, char __user *buf, size_t count,
		loff_t *f_pos)
{
	struct bfmod_dev *dev = filp->private_data;

	if (mutex_trylock(&(dev->mt)))
	{
		/*size_t size = min (count, dev->cnt);
		size = min(size,dev->size - dev->first);
		copy_to_user(buf, dev->out_buf + dev->first, size);
		dev->first = (dev->first + size) % dev->size;
		dev->cnt -= size;*/
		mutex_unlock(&(dev->mt));
		gpio_set_value(USB_ADR_0, 0);
		gpio_set_value(USB_ADR_1, 0);
		SSYNC();
		while (gpio_get_value(EP_FLAG_EMPTY))
		{
			printk(KERN_INFO "Precteno: %c\n",ioread8(dev->mem));
			SSYNC();
		}
		//return size;
		return 0;
	}
	return -1;
}

ssize_t bfmod_write(struct file *filp, const char __user *buff, size_t count,
		loff_t *offp)
{
	struct bfmod_dev *dev = filp->private_data;
	if (dev->cnt == dev->size)
		return 0;
	if (mutex_trylock(&(dev->mt)))
	{
//		size_t size = min (count, dev->size - dev->cnt);
//		size = min(size,dev->size - dev->last);
//		copy_from_user(dev->out_buf + dev->last, buff, size);
//		dev->last = (dev->last + size) % dev->size;
//		dev->cnt += size;
//		printk(KERN_INFO "Zkopirovano: %d First: %d Last: %d\n", size,
//				dev->first, dev->last);
		int i=0;
		gpio_set_value(USB_ADR_0, 0);
		gpio_set_value(USB_ADR_1, 1); //EndPoint 6
		gpio_set_value(PKTEND,1);
		ioread8(dev->mem);
		SSYNC();

		copy_from_user(dev->out_buf, buff, min(count, dev->size));

		printk(KERN_INFO "Flag FULL: %d\n",gpio_get_value(EP_FLAG_FULL));
		printk(KERN_INFO "Flag EMPTY: %d\n",gpio_get_value(EP_FLAG_EMPTY));
		while (gpio_get_value(EP_FLAG_FULL) && i<count) //full flag je pri log.0
		{
		  iowrite8(*(dev->out_buf+i),dev->mem);
			SSYNC();
			i++;
		}
		gpio_set_value(PKTEND,0);
		ioread8(dev->mem);
		SSYNC();
		gpio_set_value(PKTEND,1);
		ioread8(dev->mem);
		SSYNC();
		mutex_unlock(&(dev->mt));
		return i;
	}
	return -1;
}

static struct file_operations bfmod_fops =
{ .owner = THIS_MODULE, .open = bfmod_open, .release = bfmod_release,
		.read = bfmod_read, .write = bfmod_write };

static int visor_usb_probe(struct platform_device *visor_usb_device)
{
	int res;
	int bfmod_major = BFMOD_MAJ;

	//CharDev Allocation
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

	if (res < 0)
		goto alloc_failed;


	//Device structure Allocation
	bfmod_devs = kmalloc(sizeof(struct bfmod_dev), GFP_KERNEL);
	if (!bfmod_devs)
	{
		res = -ENOMEM;
		goto alloc_failed;
	}

	//Minor Number allocation
	cdev_init(&bfmod_devs->cdev, &bfmod_fops);
	bfmod_devs->cdev.owner = THIS_MODULE;
	bfmod_devs->cdev.ops = &bfmod_fops;
	res = cdev_add(&bfmod_devs->cdev, bfmod_num, 1);
	if (res < 0)
		goto add_failed;

	mutex_init(&bfmod_devs->mt);
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
	USB_ADDRESS = visor_usb_device->resource[0].start;

	res=gpio_request_array(address_gpios,ARRAY_SIZE(address_gpios));
	if (res) goto add_failed;

	struct resource *rc = request_mem_region(USB_ADDRESS, 4,"bf533usb");
	if (rc==NULL)
	{
		res = -ENOLCK;
		goto add_failed;
	}

	u8 __iomem *mem=ioremap_nocache(USB_ADDRESS,4);
	if (mem==NULL)
			{
				res = -ENOLCK;
				goto remap_failed;
			}

	bfmod_devs->mem = mem;

	res = request_irq(GPIO_IRQ_BASE + EP_FLAG_EMPTY,bfmod_irqhandler,IRQF_SHARED,"bf533usb", bfmod_devs);
	if (res < 0) goto remap_failed;

	gpio_set_value(PKTEND,1);

	visor_usb=class_create(THIS_MODULE, "visor_usb");
	device_create(visor_usb,NULL,bfmod_num,"%s","usbBF");
	printk(KERN_INFO "bf533usb: Successfully loaded! Number %d:%d\n",
			MAJOR(bfmod_num), MINOR(bfmod_num));
	return 0;


//Something went wrong during initialization of the driver
// shutting down!
	remap_failed:
		release_mem_region(USB_ADDRESS, 4);
	add_failed:
		cdev_del(&bfmod_devs->cdev);
		kfree(bfmod_devs);

	alloc_failed: return res;
}

static int __devexit visor_usb_remove(void)
{
	free_irq(GPIO_IRQ_BASE + EP_FLAG_EMPTY, bfmod_devs);
	gpio_free_array(address_gpios,ARRAY_SIZE(address_gpios));
	iounmap(bfmod_devs->mem);
	release_mem_region(USB_ADDRESS, 4);

	cdev_del(&bfmod_devs->cdev);
	unregister_chrdev_region(bfmod_num, 1);
	kfree(bfmod_devs->out_buf);
	kfree(bfmod_devs);
	printk(KERN_INFO "bf533usb: Succesfully unloaded!\n");
	return 1;
}

static struct platform_driver visor_usb_driver = {
  .probe = visor_usb_probe,
  .remove = visor_usb_remove,
  .driver = {
    .name = BFIN_USB_DRIVER_NAME,
    .owner = THIS_MODULE,
  }
};



static int __init visor_usb_init()
{
  return platform_driver_register(&visor_usb_driver);
}

static void __exit visor_usb_exit()
{
  platform_driver_unregister(&visor_usb_driver);
}

module_init(visor_usb_init)
;
module_exit(visor_usb_exit)
;
