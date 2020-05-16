#!/bin/bash
set -euo pipefail

sudo apt-get install octave -y -m
octave --eval "pkg install -forge symbolic"
code --install-extension paulosilva.vsc-octave-debugger
pip3 install SymPy
sudo `which add-if-not-in-file` "pkg load symbolic" /usr/share/octave/site/m/startup/octaverc
sudo `which add-if-not-in-file` "sympref quiet on" /usr/share/octave/site/m/startup/octaverc
