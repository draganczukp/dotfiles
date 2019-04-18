#!/bin/zsh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

wm="i3"

case $wm in
	"dwm" )
		~/bin/startup &

		xset s 0

		while [[ true ]]; do
			~/bin/dwmstatus
			sleep 1
		done &

		dwm > ~/.dwm.log 2> ~/.dwm.err.log
		;;
	"i3" )
		i3
		;;
	"awesome" )
		awesome
		;;
esac
