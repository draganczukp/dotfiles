setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
setopt autocd

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

function \-(){
  cd -
}

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d
