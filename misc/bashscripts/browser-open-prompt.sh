#!/bin/bash

PROMPT="URL de Acesso:"
REGEX='^(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-‌​A-Za-z0-9\+&@#/%=~_|‌​]$'
COMMON="https://\nhttp://\nDuckDuckGo\nFacebook\nTwitter\nNetflix\nInbox\nYouTube\nGitHub\nHackerNews"

# Get access url
URL=`printf "$COMMON" | dmenu -b -fn '-lucy-tewi-medium-r-normal-*-11-90-*-*-*-*-*-*' -nb '#000000' -nf '#FFFFFF' -sb '#5E637E' -l 0 -p "$PROMPT"`


# Switch for interesting options
case $URL in
    "DuckDuckGo")
        URL="https://duckduckgo.com/" ;;
    "Facebook")
        URL="https://facebook.com/" ;;
    "Twitter")
        URL="https://twitter.com/" ;;
    "Netflix")
        URL="https://netflix.com/" ;;
    "Inbox")
        URL="https://inbox.google.com/" ;;
    "YouTube")
        URL="https://youtube.com/" ;;
    "GitHub")
        URL="https://github.com/" ;;
    "HackerNews")
        URL="https://news.ycombinator.com/" ;;
esac


if [ -z "$URL" ] ; then
    # Do nothing...
    echo "Acesso cancelado."
elif [ "$URL" == "https://" ] || [ "$URL" == "http://" ] ; then
    echo "Você precisa especificar sua URL."
    notify-send "Você precisa especificar sua URL."
# Check if URL is valid
elif [[ $URL =~ $REGEX ]] ; then
    echo "Acessando $URL..."
    notify-send "Acessando $URL..."
    xdg-open $URL
else
    echo "Pesquisando por \"$URL\"..."
    notify-send "Pesquisando por \"$URL\"..."
    xdg-open "https://duckduckgo.com/?q=$URL"
fi
    
