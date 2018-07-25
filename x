#!/bin/bash
 
## -- 3270 setup
if [ -v DISPLAY ]; then
    FONT="xft:IBM 3270:pixelsize=15:charheight=20:antialias=true"
 
    /usr/local/bin/urxvt -geometry 90x43 -cr white -uc -fn "$FONT" -name The -e nthe "${@}" &
else
    nthe "${@}"
fi
