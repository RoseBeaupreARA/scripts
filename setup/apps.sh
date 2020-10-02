#!/bin/bash
set -euo pipefail

sudo apt-get install -y \
    filezilla \ 
    wine-stable \
    lcov \
    speedcrunch \
    htop \
    ccache \
    ninja-build \
    cmake \
    git-lfs \
    virtualbox \
    imagemagick

sudo snap install slack --classic
sudo snap install clion --classic --edge
