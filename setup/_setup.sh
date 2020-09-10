#!/bin/bash
set -euo pipefail

if (( $EUID == 0 )); then
    echo "Do not run as sudo"
    exit 1
fi

scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $scriptPath

PATH="$scriptPath/..:$PATH"

add-if-not-in-file 'PATH="$HOME/git/scripts:$PATH"' ~/.profile

./32bit.sh
./apps.sh
# ./arm-none-eabi-gcc.sh
./awesome.sh
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
./usb-permissions.sh
./csv.sh