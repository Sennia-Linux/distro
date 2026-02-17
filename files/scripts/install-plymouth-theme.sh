#!/usr/bin/env bash

set -ueo pipefail

dnf5 install -y plymouth-plugin-script

git clone https://github.com/Sienna-Linux/plymouth-theme.git running-cat
rm -rf running-cat/.git
mv running-cat /usr/share/plymouth/themes/

plymouth-set-default-theme running-cat
