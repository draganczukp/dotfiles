" *.md filetype config
" Created: 15.08.2019
" Last Modified: 15.08.2019
" Creator: Przemk Dragańczuk <admin@draganczuk.tk>
" Licence: WTFPL

if exists("b:did_md_ftplugin")
	finish
endif
let b:did_html_ftplugin

source ~/.config/nvim/snippets/md.vim

let b:undo_ftplugin = "call s:undo()"
function s:undo()
	
endfunction
