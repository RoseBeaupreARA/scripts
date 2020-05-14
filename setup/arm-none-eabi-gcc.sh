#!/bin/bash
set -euo pipefail

echo arm-none-eabi-gcc
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa -y
sudo apt-get update
sudo apt-get install cmake git gcc-arm-embedded -y