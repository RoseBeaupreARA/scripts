#!/bin/bash
set -euo pipefail

# cd to setup directory
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo apt-get install awesome xclip numlockx -y
cp ./.config ~ -r
