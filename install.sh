#!/usr/bin/env bash

set -e

cd panel-cwu50
sudo make -C /lib/modules/$(uname -r)/build M=$(pwd) modules_install
cd ..

cd ocp8178
sudo make -C /lib/modules/$(uname -r)/build M=$(pwd) modules_install
cd ..

sudo depmod

sudo cp devterm-panel-uc-overlay.dtbo /boot/overlays/devterm-panel-uc.dtbo
sudo chmod 755 /boot/overlays/devterm-panel-uc.dtbo

sudo cp devterm-pmu-overlay.dtbo /boot/overlays/devterm-pmu.dtbo
sudo chmod 755 /boot/overlays/devterm-pmu.dtbo

sudo cp devterm-misc-overlay.dtbo /boot/overlays/devterm-misc.dtbo
sudo chmod 755 /boot/overlays/devterm-misc.dtbo
