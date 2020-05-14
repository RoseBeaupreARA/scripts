#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Usage: sudo ./_setup.sh"
  exit 1
fi

./32bit.sh
./apps.sh
./arm-none-eabi-gcc
# ./awesome.sh
./chrome.sh
./clock.sh
./console-ctrl.sh
