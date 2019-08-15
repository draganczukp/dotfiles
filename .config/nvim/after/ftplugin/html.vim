" *<++> filetype config
" Created: <++>
" Last Modified: <++>
" Creator: Przemk Dragańczuk <admin@draganczuk.tk>
" Licence: WTFPL

if exists("b:did_<++>_ftplugin")
	finish
endif
let b:did_<++>_ftplugin

<++>

let b:undo_ftplugin = "call s:undo()"
function s:undo()
	<++>
endfunction
