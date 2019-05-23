#!/bin/bash
#set -vx

#urxvt -geometry 80x40 -bg "#ffffe5" -fg black -cr red -fn "xft:IBM 3270:size=16:antialias=true" -tn xterm-265color -vb -sb +bc -name Vim -e vim "${@}" &

## -- Acme setup
#FONT="xft:Liberaton Mono:pixelsize=14:antialias=true"
#FONT="xft:IBM Plex Mono Text:pixelsize=13:antialias=true"
#BG="#ffffe5" 
#FG="black"

## -- 3270 setup
#FONT="xft:IBM 3270:pixelsize=15:antialias=true"
#FONT="IBM 3270:size=12:antialias=true"
#FONT="xft:DejaVu Sans Mono:size=12:antialias=true"
#FONT="xft:Terminus:size=12:antialias=true"
FONT="xft:Go Mono:size=10:antialias=true"
BG="black" 
#BG="#282828"
#FG="#55ff55"
FG="#ffffe5"

/usr/local/bin/xterm -geometry 85x43 -fa "$FONT" -tn xterm-265color -vb -sb +bc -name Vim -e vim "+colors acme" "${@}" &
#/usr/local/bin/xterm -geometry 85x43 -bg "$BG" -fg "$FG" -cr red -fa "$FONT" -tn xterm-265color -vb -sb +bc -name Vim -e vim "+colors acme" "${@}" &
#/usr/local/bin/stgb -g 80x40 -f "$FONT" -t Vim -e vim "+colors 3270" "${@}" &
