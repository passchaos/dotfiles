#!/bin/bash
#
# mpdcover.sh - Download cover from Last.fm and overlay with image
#
# Florian <floriandejonckheere.be>
#
# bug: it detects the artist change twice

## CONFIGURATION ##
# Folder for cached album art
# Don't use ~, as conky will treat it as a regular directory name
CACHE="$HOME/.conky/covers"
# API Key for Last.fm
# NOTE: REPLACE THIS! USE YOUR OWN API KEY!
#APIKEY=""
# Log file, only for debugging purposes
LOG=/home/user/.conky/tmp/conky-mpd.log

# Check for vital commands
CMD="mpc curl convert"
for CHECK in $CMD; do
	[ ! "$CHECK" ] && echo "Command $CHECK not found. Exiting." && exit 1
done
[ ! -d "$CACHE" ] && mkdir -p "$CACHE"

ARTIST="$(mpc --format %artist% | head -1)"
ALBUM="$(mpc --format %album% | head -1)"

TMP=/home/user/.conky/tmp/conkympd.tmp
[ ! -f $TMP ] && touch $TMP
[ "$(cat $TMP)" == "$ARTIST+$ALBUM" ] && exit 0
#[ "$(cat $TMP)" == "$ARTIST+$ALBUM" ] && echo "Same artist." >> $LOG && exit 0
echo "Artist changed: $ALBUM by $ARTIST" >> $LOG

#[ -f "/home/user/.conky/tmp/conkyCover.png" ] && rm "/home/user/.conky/tmp/conkyCover.png"
cp $HOME/.conky/nocover.png /home/user/.conky/tmp/conkyCover.png
echo "NoCover" >> $LOG

COVER="$CACHE/$ARTIST - $ALBUM.jpg"
# Is cover cached?
if [ ! -f "$COVER" ]; then
# Nope. Download.
	echo "Downloading cover for $ARTIST - $ALBUM" >> $LOG
	# Download XML info
	curl --data-urlencode artist="$ARTIST" --data-urlencode album="$ALBUM" "http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=$APIKEY" -o /home/user/.conky/tmp/lastfm.xml &> /dev/null
	echo "Exit: $?. Downloaded $(wc -l /home/user/.conky/tmp/lastfm.xml | cut -d' ' -f1) bytes." >> $LOG
	# Strip XML and download mega large cover to cache
	curl $(sed -n 's|<image size="mega">\(.*\)<\/image>|\1|p' /home/user/.conky/tmp/lastfm.xml) -o "$COVER" &> /dev/null
	echo "Exit: $?" >> $LOG
	echo "Downloaded to $COVER." >> $LOG
fi
# Copy cache for processing
echo "Copying $COVER." >> $LOG
cp "$COVER" /home/user/.conky/tmp/cover.jpg
# Downscale to fit overlay
convert /home/user/.conky/tmp/cover.jpg -resize 366 /home/user/.conky/tmp/cover.png >> $LOG
# Enlarge canvas to fit overlay
convert /home/user/.conky/tmp/cover.png -background none -extent 500x455-84-44 /home/user/.conky/tmp/cover.png >> $LOG
# Overlay overlay over cover
convert /home/user/.conky/tmp/cover.png $HOME/.conky/case.png -composite /home/user/.conky/tmp/cover.png >> $LOG
# Resize for immediate use
#rm /home/user/.conky/tmp/conkyCover.png
convert /home/user/.conky/tmp/cover.png -resize 150 /home/user/.conky/tmp/conkyCover.png >> $LOG
# Set current artist
echo "$ARTIST+$ALBUM" > $TMP
rm /home/user/.conky/tmp/cover.jpg /home/user/.conky/tmp/cover.png
