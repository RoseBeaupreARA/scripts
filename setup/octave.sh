#!/bin/bash
echo octave
sudo apt-get install octave -m
octave --eval "pkg install -forge symbolic"
code --install-extension paulosilva.vsc-octave-debugger
pip3 install SymPy
echo "pkg load symbolic" | sudo tee -a /usr/share/octave/site/m/startup/octaverc
echo "sympref quiet on" | sudo tee -a /usr/share/octave/site/m/startup/octaverc