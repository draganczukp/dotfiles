#!/bin/zsh

~/bin/startup

while [[ true ]]; do
	~/bin/dwmstatus
	~/bin/calendar
	sleep 1
done &
dwm
