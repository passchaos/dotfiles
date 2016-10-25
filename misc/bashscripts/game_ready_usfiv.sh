#!/bin/sh

#Run as root, ok?

modprobe -r xpad
modprobe -r xpad_steamos
sudo -u lucas pkill compton
cpupower frequency-set -g performance
xboxdrv --trigger-as-button --detach-kernel-driver

# When releasing xboxdrv, return all to normal
cpupower frequency-set -g powersave
sudo -u lucas compton &
modprobe xpad
modprobe steamos_xpad
