#!/bin/bash

PROMPT="URL de Acesso:"
URL=`printf "" | dmenu -b -fn '-lucy-tewi-medium-r-normal-*-11-90-*-*-*-*-*-*' -nb '#000000' -nf '#FFFFFF' -sb '#5E637E' -l 0 -p "$PROMPT"`

if [ "$URL" != "http://"* ] && [ "$URL" != "https://"* ] ; then
   URL="https://$URL"
fi

echo Acessando $URL...
notify-send Acessando $URL...
xdg-open $URL
