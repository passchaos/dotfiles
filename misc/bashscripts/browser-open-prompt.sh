#!/bin/bash

PROMPT="Navegar ou pesquisar >> "
REGEX='^(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-‌​A-Za-z0-9\+&@#/%=~_|‌​]$'
COMMON="https://\nhttp://\nstartpage\ntwitter\nmastodon\nnetflix\nprotonmail\nyoutube\ngithub\nhackernews\ninstagram\nwhatsapp\nwikipedia\nwolfram\ncplusplus"

FONT="-lucy-tewi-medium-r-normal-*-11-90-*-*-*-*-*-*"
BG="#000000"
FG="#FFFFFF"
SB="#5E637E"

# If we have a favorite websites file, then run it now
if [ -f ~/.browser-favorites.sh ] ; then
    source ~/.browser-favorites.sh
fi


# Predefine functions for suboperations
youtube_search()
{
    PROMPT="Pesquisar no YouTube >> "
    SEARCH=`printf "[abrir website]" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`

    if [ -z "$SEARCH" ] ; then
        echo ""
    elif [ "$SEARCH" == "[abrir website]" ] ; then
        echo "https://youtube.com/"
    else
        notify-send "Pesquisando no YouTube por \"${SEARCH}\"..."
        SEARCH=${SEARCH//[+]/%2B}
        SEARCH=${SEARCH//[ ]/+}
        echo "https://youtube.com/results?search_query=${SEARCH}"
    fi
}


facebook_search()
{
    PROMPT="Pesquisar no Facebook >> "
    SEARCH=`printf "[abrir website]" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`

    if [ -z "$SEARCH" ] ; then
        echo ""
    elif [ "$SEARCH" == "[abrir website]" ] ; then
        echo "https://facebook.com/"
    else
        notify-send "Pesquisando no Facebook por \"${SEARCH}\"..."
        SEARCH=${SEARCH//[+]/%2B}
        SEARCH=${SEARCH//[ ]/+}
        echo "https://facebook.com/search/top/?q=${SEARCH}"
    fi
}


twitter_search()
{
    PROMPT="Pesquisar no Twitter >> "
    SEARCH=`printf "[abrir website]" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`

    if [ -z "$SEARCH" ] ; then
        echo ""
    elif [ "$SEARCH" == "[abrir website]" ] ; then
        echo "https://twitter.com/"
    else
        notify-send "Pesquisando no Twitter por \"${SEARCH}\"..."
        SEARCH=${SEARCH//[+]/%2B}
        SEARCH=${SEARCH//[ ]/+}
        echo "https://twitter.com/search?q=${SEARCH}"
    fi
}



wikipedia_search()
{
    PROMPT="Pesquisar na Wikipedia >> "
    SEARCH=`printf "[abrir website]" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`

    if [ -z "$SEARCH" ] ; then
        echo ""
    elif [ "$SEARCH" == "[abrir website]" ] ; then
        echo "https://wikipedia.org/"
    else
        notify-send "Pesquisando na Wikipedia por \"${SEARCH}\"..."
        SEARCH=${SEARCH//[+]/%2B}
        SEARCH=${SEARCH//[ ]/+}
        echo "https://en.wikipedia.org/w/index.php?search=${SEARCH}&title=Special%3ASearch"
    fi
}

cplusplus_search()
{
    PROMPT="Pesquisar no cplusplus (http) >> "
    SEARCH=`printf "[abrir website]" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`

    if [ -z "$SEARCH" ] ; then
        echo ""
    elif [ "$SEARCH" == "[abrir website]" ] ; then
        echo "http://cplusplus.com/"
    else
        notify-send "Pesquisando no cplusplus por \"${SEARCH}\"..."
        SEARCH=${SEARCH//[+]/%2B}
        SEARCH=${SEARCH//[ ]/+}
        echo "http://cplusplus.com/search.do?q=${SEARCH}"
    fi
}


wolfram_search()
{
    PROMPT="Pesquisar no Wolfram|Alpha >> "
    SEARCH=`printf "[abrir website]" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`

    if [ -z "$SEARCH" ] ; then
        echo ""
    elif [ "$SEARCH" == "[abrir website]" ] ; then
        echo "https://www.wolframalpha.com/"
    else
        notify-send "Pesquisando no Wolfram|Alpha por \"${SEARCH}\"..."
        SEARCH=${SEARCH//[+]/%2B}
        SEARCH=${SEARCH//[ ]/+}
        echo "https://www.wolframalpha.com/input/?i=${SEARCH}"
    fi
}

favselect()
{
    PROMPT="Favoritos >> "
    FAVORITES="wtf"

    for website in "${!PREFS[@]}" ; do
        FAVORITES="${FAVORITES}\n${website}"
    done

    URL=`printf "${FAVORITES}" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`
}



#Comment if you want to show it on main menu
COMMON="${COMMON}\nfavorites"

# Also, loop through our favorites list and append them to our commons list
# Uncomment if you want to show it on main menu
#for website in "${!PREFS[@]}" ; do
#    COMMON="${COMMON}\n${website}" ;
#done

# Get access url
URL=`printf "$COMMON" | dmenu -b -fn "$FONT" -nb "$BG" -nf "$FG" -sb "$SB" -l 0 -p "$PROMPT"`


# Comment if you're showing favorites on main menu
if [[ "$URL" == "favorites" ]] ; then
    favselect
fi

# Switch for default options
case $URL in
    "startpage")
        URL="https://startpage.com/" ;;
    #"facebook")
    #    URL="$(facebook_search)" ;;
    "twitter")
        URL="$(twitter_search)" ;;
    "mastodon")
	URL="https://mastodon.gamedev.place/" ;;
    "netflix")
        URL="https://netflix.com/" ;;
    "protonmail")
        URL="https://mail.protonmail.com/login" ;;
    "youtube")
        URL="$(youtube_search)" ;;
    "github")
        URL="https://github.com/" ;;
    "hackernews")
        URL="https://news.ycombinator.com/" ;;
    "instagram")
        URL="https://instagram.com/" ;;
    "whatsapp")
        URL="https://web.whatsapp.com/" ;;
    "wikipedia")
        URL="$(wikipedia_search)" ;;
    "wolfram")
        URL="$(wolfram_search)" ;;
    "cplusplus")
        URL="$(cplusplus_search)" ;;
esac


# Switch for user-created options
# If it is set...
if [ ! -z "$URL" ] && [ -z ${PREFS+x} ] ; then
    #Check if input is in hash table
    if test "${PREFS[$URL]+isset}" ; then
        URL="${PREFS[$URL]}"
    fi
fi

if [ -z "$URL" ] ; then
    # Do nothing...
    echo "Acesso cancelado."
elif [ "$URL" == "https://" ] || [ "$URL" == "http://" ] ; then
    echo "Você precisa especificar sua URL."
    notify-send "Você precisa especificar sua URL."
# Check if URL is valid
elif [[ $URL =~ $REGEX ]] ; then
    echo "Acessando $URL..."
    #notify-send "Acessando $URL..."
    xdg-open $URL
else
    echo "Pesquisando por \"$URL\"..."
    notify-send "Pesquisando por \"$URL\"..."
    URL=${URL//[+]/%2B}
    URL=${URL//[ ]/+}
    xdg-open "https://www.startpage.com/do/dsearch?query=${URL}&cat=web"
fi
    
