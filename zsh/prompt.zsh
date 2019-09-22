autoload -U promptinit

fpath=(~/dotfiles/zsh-theme/draganczukp/ $fpath)

promptinit

autoload -Uz prompt_special_chars
prompt_special_chars

prompt draganczukp
