#!/bin/bash
set -euo pipefail

# echo Dont forget to enable virtualization in the BIOS

id=ubuntu-20.04-desktop-amd64
disk_img="${id}.img.qcow2"
disk_img_snapshot="${id}.snapshot.qcow2"
iso="${id}.iso"

sudo apt-get install qemu-kvm libvirt-clients libvirt-daemon-system virtinst libosinfo-bin virt-manager

if [ ! -f "$iso" ]; then
  wget "http://releases.ubuntu.com/20.04/${iso}"
fi

export LIBVIRT_DEFAULT_URI='qemu:///system'
virt-install \
    --virt-type kvm \
    --name buster-amd64 \
    --cdrom $iso \
    --os-variant ubuntu18.10 \
    --disk size=20 \
    --memory 2048

# virsh list --all 
# virsh shutdown VM_NAME
# virsh destroy VM_NAME
# virsh undefine --domain {VM_NAME_HERE} --remove-all-storage