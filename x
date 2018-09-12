#!/bin/bash
 
## -- Acme setup
#FONT="xft:Liberaton Mono:pixelsize=14:antialias=true"
FONT="xft:IBM Plex Mono Text:pixelsize=14:antialias=true"
 
## -- 3270 setup
#FONT="xft:IBM 3270:pixelsize=16:antialias=true"
#FONT="xft:IBM 3270:size=13:antialias=true"
if [ $# -gt 0 ] && [ $1 == '-t' ]; then
    shift
    nthe "${@}"
    exit
else 
    if [ -v DISPLAY ]; then
        exec /usr/local/bin/xterm -geometry 90x35 -fa "$FONT" -tn xterm-265color  -name The -e nthe "${@}" & 
    else
        nthe "${@}"
        exit
    fi
fi

# /usr/local/bin/xthe "${@}"
