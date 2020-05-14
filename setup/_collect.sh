#!/bin/bash
set -euo pipefail

# cd to setup directory
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp ~/.config/awesome ./.config/ -r
