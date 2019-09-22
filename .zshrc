ZSH=~/dotfiles/zsh

source $ZSH/exports.zsh
source $ZSH/path.zsh
source $ZSH/history.zsh
source $ZSH/keys.zsh
source $ZSH/completions.zsh
source $ZSH/corrections.zsh
source $ZSH/dirs.zsh
source $ZSH/aliases.zsh
source $ZSH/functions.zsh
source $ZSH/prompt.zsh
source $ZSH/sudo.zsh

setopt interactivecomments

autoload -U colors && colors

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
