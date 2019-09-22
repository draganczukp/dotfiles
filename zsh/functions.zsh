function poweroff(){
	if [[ -n $SSH_CONNECTION ]]; then
		echo "Connected to server." | toilet -f future
	else
		systemctl poweroff
	fi
}

