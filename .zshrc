# vim: set foldmethod=marker:

# {{{ Setup oh-my-zsh

export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/bin:/usr/local/bin:$PATH:$HOME/.gem/ruby/2.6.0/bin
export PATH="$(du $HOME/bin/ | cut -f2 | tr '\n' ':')$PATH"

# export TERM="xterm-256color"

export LANGUAGE=pl_PL.UTF-8
export LC_ALL=pl_PL.UTF-8
export LANG=pl_PL.UTF-8

export EDITOR='nvim'
export BROWSER='qutebrowser'

export ZSH=/home/killermenpl/.oh-my-zsh

# {{{ Theme

ZSH_THEME="draganczukp/draganczukp"
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MODE='nerdfont-fontconfig'
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ssh time)
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# # }}}

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"


plugins=(
bower
common-aliases
# fbterm
gitfast
# gradle
npm
sudo
# tmux
)

# export ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# }}}

# {{{ ZSH config

# setopt extendedGlob

# autoload -U zmv

# autoload -U zargs

# setopt promptsubst

# setopt noflowcontrol

# setopt AUTO_PARAM_SLASH
# unsetopt AUTO_REMOVE_SLASH

# }}}

# {{{ 3rd party plugins

# source ~/dotfiles/.completions

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(dirname $(gem which colorls))/tab_complete.sh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
base16_monokai

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# }}}

# {{{ Aliases

alias ls="colorls --sd "

alias ll="ls -Al"
alias l="ls -l"
alias lp="l | less"
alias llp="ll | less"
alias lt="ls --tree"

# alias lg="ls --gs"
# alias lgt="ls --gs --tree"

alias lg="lazygit"

alias dev="php -S 127.0.0.1:8000"
alias vim="nvim"
alias git="hub"
# alias launch="xdg-open"
alias cim="vim"
alias v="vim"
alias c="conf"

alias mkdir="mkdir -p"

alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias vimrc="vim ~/.config/nvim/init.vim"

# That's the simplest way to run it from anywhere without problems with symlinks
alias blog="~/dev/blog/blog"

alias df="df -h"
# }}}

# {{{ Functions

function update(){
	yay -Syu --needed --noconfirm
	gem update
}

function launch() {
	(xdg-open "$@" > /dev/null 2>&1 )&
}

function s(){
	local server=$(echo "draganczuk.tk\nosmc@tv\nd198777@willow.imei.uz.zgora.pl" | fzf)
	[ -z $server ] || ssh $server
}
function poweroff(){
	if [[ -n $SSH_CONNECTION ]]; then
		echo "Connected to server." | toilet -f future
	else
		systemctl poweroff
	fi
}

function lsmount() {
	(echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ;
}

# Colored manpages
function man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}

# Fancy cd that can cd into parent directory, if trying to cd into file.
# useful with ^F fuzzy searcher.
# function cd() {
# 	if (( $+2 )); then
# 		builtin cd "$@"
# 		return 0
# 	fi

# 	if [ -f "$1" ]; then
# 		echo "${yellow}cd ${1:h}${NC}" >&2
# 		builtin cd "${1:h}"
# 	else
# 		builtin cd "${@}"
# 	fi
# }

function mkcd(){
	mkdir -p $1; cd $1
}

# function \$(){
# 	$@
# }

# }}}

# {{{ Startup

motd

# load wall
# [ -e ~/.cache/wal/sequences ] && cat ~/.cache/wal/sequences 
# wal -r -t

# Start a tmux session for IRC and stuff

# tmux new-session -s "IRC" irssi

# }}}

