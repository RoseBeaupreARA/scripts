#!/bin/bash
set -euo pipefail

sudo `which add-if-not-in-file` 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", MODE="0666"' /etc/udev/rules.d/50-usb-ara.rules
sudo `which add-if-not-in-file` 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="5749", MODE="0666"' /etc/udev/rules.d/50-usb-ara.rules
sudo `which add-if-not-in-file` 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0664", GROUP="plugdev"' /etc/udev/rules.d/50-usb-ara.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
