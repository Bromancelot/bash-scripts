#!/usr/bin/bash
 
FONT="IBM Plex Mono:size=13"
 
/usr/local/bin/stgb  -f "$FONT" -t "Micro Editor" -e micro "${@}" &
