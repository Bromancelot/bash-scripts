#!/bin/bash

#/usr/bin/google-chrome-stable "${@}" > /dev/null 2>&1 &
#/usr/local/firefox/firefox "${@}" > /dev/null 2>&1 &
/opt/firefox/firefox -new-window "${@}" > /dev/null 2>&1 &
