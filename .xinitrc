#!/bin/zsh

[ -e ~/.screenlayout/layout.sh ] && ~/.screenlayout/layout.sh &
setxkbmap -option caps:escape &
~/bin/wallpaper &
~/bin/start-compton &
dunst &
qutebrowser &
spotify &
/usr/lib/kdeconnectd &
tilda &

xset s 0

~/bin/dwmstatus &
dwm
