# vim:ft=zsh
# Yes, it's ugly. But it's mine

local RESET="%{$reset_color%}"
local L_BRACKET="《"
local R_BRACKET=" 》"

local function p-print(){
	echo "%{$FG[$1]%}$L_BRACKET$2$R_BRACKET"
}

local function getHost(){
	p-print 010 " $HOST"
}

local function getUser(){
	[ "$USER" = 'root' ] && p-print 001 "root" # || p-print 012 "$USER"
}

local function getPWD(){
	p-print 045 "${PWD/$HOME/~}"
}

local function getGIT(){
	# Return if not in git
	local ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	ZSH_THEME_GIT_PROMPT_DIRTY="125"
	ZSH_THEME_GIT_PROMPT_CLEAN="050"
	local dirty=$(parse_git_dirty)
	local ahead=$(git_commits_ahead)
	[[ $ref != "" ]] && p-print $dirty " $(git_current_branch)"
}

local function getUptime(){
	local uptime=$(uptime -p | cut -c 4- | sed -r 's! minutes?!m!g;s! hours?!h!g;s!weeks?!w!g;!days?!d!g')
	p-print 214 "⏱ $uptime"
}

local function isSSH(){
	[[ -n $SSH_CONNECTION ]] && p-print 007 "" || echo "" >/dev/null
}

PROMPT='$RESET
╭─$(getHost)$(getUser)$(getPWD)
$RESET╰─'

RPROMPT='$RESET $(getGIT)$(isSSH)$(getUptime)$RESET'
