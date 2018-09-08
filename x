#!/bin/bash
 
# -- use -t as "execute in this terminal"
if [ $1 == '-t' ]; then
    shift
    nthe "${@}"
else 
    if [ -v DISPLAY ]; then
        FONT="xft:IBM 3270:pixelsize=15:charheight=20:antialias=true"
        /usr/local/bin/urxvt -geometry 90x43 -cr white -uc -fn "$FONT" -name The -e nthe "${@}" &
    else
        nthe "${@}"
    fi
fi
