" *.md filetype config
" Created: 21.09.2019
" Last Modified: 21.09.2019
" Creator: Przemk Dragańczuk <admin@draganczuk.tk>
" Licence: WTFPL

if exists("b:did_markdown_ftplugin")
	finish
endif

let b:did_md_ftplugin=1

source ~/.config/nvim/snippets/md.vim

func Preview(timer)
	MarkdownPreview
endfunc
let timer = timer_start(1000, 'Preview')
