#####################################################
# Filename: aliases.zsh								#
# Author: Przemek Dragańczuk <mail@draganczuk.tk>	#
# Description: Aliases I often use					#
#####################################################

alias ls="colorls --sd "

alias ll="ls -Al"
alias l="ls -l"
alias lp="l | less"
alias llp="ll | less"
alias lt="ls --tree"

alias lg="lazygit"

alias dev="php -S 127.0.0.1:8000"
alias vim="nvim"
alias git="hub"
# alias launch="xdg-open"
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
