#!/bin/bash
set -euo pipefail

sudo apt-get install -y libtool pkg-config automake autoconf
mkdir -p ~/git
cd ~/git
git clone https://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code
./bootstrap
./configure
make -j24
sudo make install

sudo `which add-if-not-in-file` 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="3748", MODE="0666"' /etc/udev/rules.d/51-openocd.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
