#!/usr/bin/env bash

set -Eeuxo pipefail

IFS=$'\n\t'

trap 'echo Error at about $LINENO' ERR

# Set Up Themes
git clone --recursive https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/* ~/.config/awesome; rm -rf awesome-copycats

