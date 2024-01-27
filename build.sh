#!/usr/bin/env bash

set -e

cd panel-cwu50
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
cd ..

cd ocp8178
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
cd ..


dtc -I dts -O dtb -o devterm-panel-uc-overlay.dtbo devterm-panel-uc-overlay.dts
dtc -I dts -O dtb -o devterm-pmu-overlay.dtbo devterm-pmu-overlay.dts
dtc -I dts -O dtb -o devterm-misc-overlay.dtbo devterm-misc-overlay.dts
