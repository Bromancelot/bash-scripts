#!/bin/bash
exec emacs --daemon --eval "(setq default-frame-alist '((font-backend . \"xft\") (font . \"IBM 3270-12\")))" &
