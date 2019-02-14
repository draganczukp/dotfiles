#!/bin/zsh

# ~/.screenlayout/layout.sh &
setxkbmap -option caps:escape &
~/bin/wallpaper &
~/bin/start-compton &
dunst &
qutebrowser &
spotify &
/usr/lib/kdeconnectd &

~/bin/dwmstatus &
dwm
