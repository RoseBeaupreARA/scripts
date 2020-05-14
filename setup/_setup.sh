#!/bin/bash
set -euo pipefail

if [ "$EUID" -ne 0 ]
  then echo "Usage: sudo ./_setup.sh"
  exit 1
fi

# cd to setup directory
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

add-if-not-in-file 'PATH="$HOME/git/scripts:$PATH"' ~/.profile
source .profile

./32bit.sh
./apps.sh
./arm-none-eabi-gcc
# ./awesome.sh
./chrome.sh
./clock.sh
./console-ctrl.sh
./gitkraken.sh
./libraries.sh
./logic.sh
./python.sh
./vscode.sh
./octave.sh
./openocd.sh
./wireshark.sh