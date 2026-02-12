#!/bin/bash

set -ueo pipefail

dnf5 install -y plymouth-plugin-script

git clone https://github.com/adi1090x/plymouth-themes.git
cp -r plymouth-themes/pack_1/connect /usr/share/plymouth/themes/
rm -rf plymouth-themes

plymouth-set-default-theme connect
