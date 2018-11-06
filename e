#!/bin/bash

if [ -v XAUTHORITY ]
then
    emacs -T Emacs "${@}" &
else
    emacs -nw "${@}"
fi
