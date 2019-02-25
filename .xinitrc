#!/bin/zsh

~/bin/startup

xset s 0

while [[ true ]]; do
	~/bin/dwmstatus
done &
dwm > ~/.dwm.log 2> ~/.dwm.err.log
