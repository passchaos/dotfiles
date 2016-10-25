#!/bin/sh

#Run as root, ok?

modprobe -r xpad
modprobe -r xpad_steamos
xboxdrv --trigger-as-button --detach-kernel-driver

# When releasing xboxdrv, return all to normal
modprobe xpad
modprobe steamos_xpad
