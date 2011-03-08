KDIR  = /home/foxnet/blackfin-sources/uclinux-dist/linux-2.6.x

obj-m := bf532usb_tty.o

all:
	make -C $(KDIR) M=`pwd`
		
clean:
	make -C $(KDIR) M=`pwd` clean