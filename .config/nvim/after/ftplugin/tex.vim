" *tex filetype config
" Created: 15.08.2019
" Last Modified: 15.08.2019
" Creator: Przemk Dragańczuk <admin@draganczuk.tk>
" Licence: WTFPL

if exists("b:did_tex_ftplugin")
	finish
endif
let b:did_tex_ftplugin=1

setl updatetime=1

let g:vimtex_view_method='zathura'

au FocusGained,BufEnter * :checktime

source ~/.config/nvim/snippets/tex.vim
