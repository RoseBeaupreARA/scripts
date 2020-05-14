#!/bin/bash
set -euo pipefail
echo Stop Linux from breaking Windows Clock
timedatectl set-local-rtc 1
