#!/bin/sh



[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources


exec i3

systemctl --user import-environment DISPLAY
dbus-update-activation-environment --systemd DISPLAY

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# xinput --set-prop 8 'libinput Accel Profile Enabled' 0, 1

xinput set-prop 8 292 -0.8
xset r rate 200 50

wal -r

synclient HorizTwoFingerScroll=1
