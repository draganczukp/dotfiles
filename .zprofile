#!/bin/zsh

export EDITOR="/usr/bin/nvim"
export VISUAL=$EDITOR

export READER="/usr/bin/zathura"
export BROWSER="/usr/bin/qutebrowser"

export TERMINAL="/usr/bin/alacritty"
export PATH="$HOME/.cargo/bin:$PATH"

# if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
# 	exec startx
# fi
