#!/bin/bash
set -euo pipefail

sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
sudo update-alternatives --set editor /usr/bin/code

code --install-extension paulosilva.vsc-octave-debugger

mkdir -p ~/.config/Code/User
cp ./.config/Code/User/settings.json ~/.config/Code/User/settings.json