#!/bin/zsh

export EDITOR="nvim"
export VISUAL=$EDITOR

export READER="zathura"
export BROWSER="qutebrowser"

export TERMINAL="st"
export PATH="$HOME/.cargo/bin:$PATH"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx -- -verbose 6 -logverbose 6 2>&1 > ~/.startx.log
fi

