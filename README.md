# uConsole CM4 patcher

Does not work yet!

## Preparation

Run `./prepare.sh`, then reboot your Raspberry Pi.

## Building

Run `./build.sh`

## Installing

Run `./install.sh`

## Configuration

Add the following at the end of `/boot/config.txt`:

```
[all]
ignore_lcd=1
dtoverlay=dwc2,dr_mode=host
dtoverlay=vc4-kms-v3d-pi4,cma-384
dtoverlay=devterm-pmu
dtoverlay=devterm-panel-uc
dtoverlay=devterm-misc
dtoverlay=audremap,pins_12_13
dtparam=spi=on
gpio=10=ip,np
dtparam=ant2
```
