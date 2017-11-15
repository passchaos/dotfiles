#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0
if (xrandr | grep "HDMI-0 connected" > /dev/null) then
    xrandr --output HDMI-0 --mode 0x2bb --output VGA-0 --off --output LVDS-1-1 --off
    nvidia-settings --assign CurrentMetaMode="HDMI-0: 1920x1080_60i +0+0 {viewportin=1920x1080, viewportout=1840x1015+40+33}"
else
    xrandr --output VGA-0 --off --output LVDS-1-1 --auto
fi

