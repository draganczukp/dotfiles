#!/bin/zsh

# ~/.screenlayout/layout.sh &
setxkbmap -option caps:escape &
~/bin/wallpaper &
~/bin/start-compton &
dunst &
qutebrowser &
spotify &
/usr/lib/kdeconnectd &

xset s 0
xset r rate 200 50

~/bin/dwmstatus &
dwm
