# Kernel module Makefile for Lab6 (build on the Raspberry Pi)
#
#   make          -> builds hrtimer_test.ko
#   make clean    -> removes build outputs
#
# To build more modules later (e.g. Lab6_cdev_kmod.c), add them to obj-m:
#   obj-m += Lab6_cdev_kmod.o

obj-m += hrtimer_test.o

KDIR ?= /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
