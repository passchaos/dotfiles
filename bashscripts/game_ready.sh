#!/bin/sh

#Run as root, ok?

modprobe -r xpad
modprobe -r xpad_steamos
cpupower frequency-set -g performance
xboxdrv --trigger-as-button

# When releasing xboxdrv, return all to normal
cpupower frequency-set -g powersave
modprobe xpad
modprobe steamos_xpad
