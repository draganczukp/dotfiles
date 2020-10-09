#!/bin/zsh

export EDITOR="/usr/bin/nvim"
export VISUAL=$EDITOR

export READER="/usr/bin/zathura"
export BROWSER="/usr/bin/qutebrowser"

export TERMINAL="/usr/local/bin/st"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx -- vt1 &> /tmp/startx.log
fi
