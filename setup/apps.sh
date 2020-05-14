#!/bin/bash
set -euo pipefail

sudo apt-get install -y filezilla wine-stable lcov speedcrunch htop
sudo snap install slack --classic
sudo snap install clion --classic --edge