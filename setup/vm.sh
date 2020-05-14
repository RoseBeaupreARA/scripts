#!/bin/bash
wget https://download.virtualbox.org/virtualbox/6.1.6/virtualbox-6.1_6.1.6-137129~Ubuntu~bionic_amd64.deb
dpkg -i virtualbox-6.1_6.1.6-137129~Ubuntu~bionic_amd64.deb


echo Dont forget to enable virtualization in the BIOS

apt-get install qemu-kvm libvirt-clients libvirt-daemon-system virtinst libosinfo-bin virt-manager
export LIBVIRT_DEFAULT_URI='qemu:///system'

virt-install --virt-type kvm --name buster-amd64 --cdrom ~/Downloads/ubuntu-20.04-desktop-amd64.iso --os-variant ubuntu18.10 --disk size=10 --memory 2048

