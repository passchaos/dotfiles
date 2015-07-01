#!/bin/bash
ffmpeg \
-f pulse -ac 2 -i default -f x11grab -r 20 \
-s $(xwininfo -root | grep 'geometry' | awk '{print $2;}') \
-s 1920x1080 -i :0.0 \
-acodec pcm_s16le \
-vcodec libx264 -preset ultrafast \
-threads 0 $@
