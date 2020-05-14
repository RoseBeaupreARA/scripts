#!/bin/bash
set -euo pipefail

sudo apt-get install python3 python3-pip -y
pip3 install crccheck pyusb tqdm pandas
