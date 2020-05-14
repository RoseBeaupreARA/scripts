#!/bin/bash
cd ~/Downloads
wget 'http://downloads.saleae.com/logic/1.2.29/Logic+1.2.29+(64-bit).zip'
unzip -o 'Logic+1.2.29+(64-bit).zip' -d ~ 
rm 'Logic+1.2.29+(64-bit).zip'
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="21a9", ATTR{idProduct}=="1004", MODE="0666"' > /etc/udev/rules.d/50-logic.rules
udevadm control --reload-rules && udevadm trigger
