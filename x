#!/bin/bash
 
# -- 3270 setup
if [ -v DISPLAY ]; then
    FONT="IBM Plex Mono:size=11:antialias=true:autohint=true"
    /usr/local/bin/stgb -g 85x40 -f "$FONT" -t The -e nthe "${@}" &
else
    nthe "${@}"
fi
