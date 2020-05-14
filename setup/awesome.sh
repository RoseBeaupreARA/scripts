#!/bin/bash
set -euo pipefail

sudo apt-get install awesome -y
mkdir -p ~/.config/awesome
cp ubuntu-setup/themes ~/.config/awesome -r
cp ubuntu-setup/rc.lua ~/.config/awesome
sudo apt-get install xclip -y
sudo apt-get install -y numlockx
sudo apt-get install unclutter -y
