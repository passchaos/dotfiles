#!/bin/bash
avconv \
-f alsa -i  pulse \
-f x11grab -r 60 -s 1920*1080 -i :0.0 \
-vcodec libx264 -preset ultrafast -ab 320k \
-threads 8 $@
