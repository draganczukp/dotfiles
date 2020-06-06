#!/bin/zsh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

wm="dwm"
# wm="i3"
# wm="qtile"
# wm="xmonad"

case $wm in
	"dwm" )
		~/bin/startup & &> /tmp/xinit.log

		xset s 0

		while [[ true ]]; do
			~/bin/dwmstatus
			sleep 1
		done &

	dwm

;;
	* )
		$wm > /tmp/$wm.log;;
esac
