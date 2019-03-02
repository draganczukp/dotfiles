#!/usr/bin/env sh
# This script will run offlineimap and check
# for new email if there is an internet connection.
#
# If it detects new mail, it uses mpv to play a
# notification sound: notify.opus
#
# I have this run as a cronjob every 5 minutes.

export DISPLAY=:0.0

# Checks for internet connection and set notification script.
ping -q -c 1 1.1.1.1 > /dev/null || exit
# Settings are different for MacOS (Darwin) systems.
notify() {
	notify-send "$2 new mail(s) in \`$1\` account."
}

# Run offlineimap. You can feed this script different settings.
offlineimap -o "$@"

# Check all accounts/mailboxes for new mail. Notify if there is new content.
for account in $(ls ~/.mail)
do
	#List unread messages newer than last mailsync and count them
	newcount=$(find ~/.mail/"$account"/INBOX/new/ -type f -newer ~/.config/mutt/etc/.mailsynclastrun 2> /dev/null | wc -l)
	if [ "$newcount" -gt "0" ]
	then
		notify "$account" "$newcount" &
	fi
done
notmuch new

#Create a touch file that indicates the time of the last run of mailsync
touch ~/.config/mutt/.mailsynclastrun
