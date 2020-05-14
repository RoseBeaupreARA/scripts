#!/bin/bash
set -euo pipefail

echo USB permissions for SKYMATE devices
sudo rm /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5748", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5750", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5770", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5771", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5760", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5761", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="5749", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0664", GROUP="plugdev"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
