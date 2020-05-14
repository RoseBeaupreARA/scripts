#!/bin/bash
set -euo pipefail

sudo apt-get install wireshark -y
sudo dpkg-reconfigure wireshark-common 
sudo usermod -a -G wireshark $USER
newgrp wireshark
