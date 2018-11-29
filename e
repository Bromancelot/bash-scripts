#!/bin/bash

if [ -v XAUTHORITY ]
then
#    emacs -T Emacs "${@}" &
    emacsclient -n -c "${@}"
else
    emacs -nw "${@}"
fi
