#!/bin/bash

if [ -v XAUTHORITY ]
then
    exec emacsclient -c -n -F "('(width . 90) '(height . 45))" "${@}" &
#    emacs -T Emacs "${@}" &	
else
    emacs -nw "${@}"
fi
