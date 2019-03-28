#!/bin/zsh

~/bin/startup

xset s 0

while [[ true ]]; do
	~/bin/dwmstatus
	sleep 1
done &
dwm > ~/.dwm.log 2> ~/.dwm.err.log
