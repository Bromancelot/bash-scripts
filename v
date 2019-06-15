#!/bin/bash

#urxvt -geometry 80x40 -bg "#ffffe5" -fg black -cr red -fn "xft:IBM 3270:size=16:antialias=true" -tn xterm-265color -vb -sb +bc -name Vim -e vim "${@}" &

## -- Acme setup
#FONT="xft:Liberaton Mono:pixelsize=16:antialias=true"
#FONT="xft:IBM Plex Mono Text:pixelsize=16:antialias=true"
#BG="#ffffe5" 
#FG="black"

## -- 3270 setup
FONT="xft:IBM Plex Mono:pixelsize=16:antialias=true"
#BG="#ffffe5" 
#FG=black
BG=black
#FG="#55ff55"
FG=white

/usr/local/bin/xterm -geometry 80x43 -bg "$BG" -fg "$FG" -cr "#663399" -fa "$FONT" -tn xterm-265color -vb -sb +bc -name Vim -e vim "+colors monow" "${@}" &
#/usr/local/bin/stgb -g 80x40 -f "$FONT" -t Vim -e vim "${@}" &
