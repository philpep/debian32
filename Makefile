REPO?=philpep/debian32

all: jessie wheezy

jessie:
	sudo ./mkimage.sh -t $(REPO):$@ debootstrap --arch=i386 --variant=minbase $@ http://httpredir.debian.org/debian

wheezy:
	sudo ./mkimage.sh -t $(REPO):$@ debootstrap --arch=i386 --variant=minbase $@ http://httpredir.debian.org/debian

update_mkimage:
	wget -O mkimage.sh https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage.sh
	wget -O mkimage/debootstrap https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage/debootstrap

.PHONY: all jessie wheezy update_mkimage
