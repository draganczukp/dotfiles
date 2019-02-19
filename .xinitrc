#!/bin/zsh

~/bin/startup

xset s 0

dwm > ~/.dwm.log 2> ~/.dwm.err.log

while [[ true ]]; do
	~/bin/dwmstatus
done &

dwm
