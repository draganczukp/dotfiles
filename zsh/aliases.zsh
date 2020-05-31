#####################################################
# Filename: aliases.zsh								#
# Author: Przemek Dragańczuk <mail@draganczuk.tk>	#
# Description: Aliases I often use					#
#####################################################

alias ls="lsd -h"

alias ll="ls -Al"
alias l="ls -l"

alias lg="lazygit"

alias vim="nvim"
alias git="hub"
alias cim="vim"
alias v="vim"
alias c="conf"
alias sc="scripts"
alias g="fzg"

alias mkdir="mkdir -p"

alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias vimrc="vim ~/.config/nvim/init.vim"

# That's the simplest way to run it from anywhere without problems with symlinks
alias blog="~/dev/blog/blog"

alias df="df -h"

alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"

# I don't use just `.` for running scripts
alias .="cd ~/dotfiles"

alias man=vman
