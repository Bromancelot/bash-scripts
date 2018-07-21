#!/bin/bash

#urxvt -geometry 80x40 -bg "#ffffe5" -fg black -cr red -fn "xft:IBM 3270:size=16:antialias=true" -tn xterm-265color -vb -sb +bc -name Vim -e vim "${@}" &

## -- Acme setup
#FONT="xft:Liberaton Mono:pixelsize=14:antialias=true"
#BG="#ffffe5" 
#FG="black"

## -- 3270 setup
FONT="xft:IBM 3270:size=11:antialias=true"
#BG="black" 
BG="#282828"
FG="#55ff55"

/usr/local/bin/urxvt -geometry 80x40 -bg "$BG" -fg "$FG" -cr blue -fa "$FONT" -tn xterm-265color -vb -sb +bc -name Vim -e vim "+colors 3270" "${@}" &
