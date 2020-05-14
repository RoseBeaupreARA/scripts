#!/bin/bash
set -euo pipefail

sudo apt-get install -y libtool pkg-config automake autoconf
git clone https://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code
./bootstrap
./configure
make -j24
sudo make install
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="3748", MODE="0666"' | sudo tee -a /etc/udev/rules.d/51-openocd.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
