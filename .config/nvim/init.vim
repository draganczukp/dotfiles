" vim: set foldmethod=marker:
call plug#begin('/home/killermenpl/.local/share/nvim/plugged')

" {{{ Generic

" {{{ Not plugin

" {{{ Set
set encoding=utf-8
set number
set relativenumber

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

"Indent with tabs
set shiftwidth=2
set tabstop=2

set autoread

set ruler

set cursorline		" highlight current line
set cursorcolumn 	" highlight current column

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" More natural splits
set splitbelow
set splitright

set formatoptions+=j

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set spelllang=pl

" }}}

" {{{ Clipboard

let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'
" map c-x and c-v to work as they do in windows, only in insert mode
vm <c-x> "+x
vm <c-c> "+y
cno <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']

" }}}

" {{{ Key binds
" allow Tab and Shift+Tab to
" tab  selection in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <esc> :noh<return><esc>


"Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"	Resize with arrows
nnoremap <S-Left> :vertical resize -1<CR>
nnoremap <S-Right> :vertical resize +1<CR>
nnoremap <S-Up> :resize -1<CR>
nnoremap <S-Down> :resize +1<CR>

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

noremap <leader>a ggVG
map <Leader>b :ls<CR>:b<Space>
map <Leader>g mggg=G`g:StripWhitespace<CR>
" }}}

" }}}

" {{{ No config needed

Plug 'tpope/vim-fugitive'

Plug 'ntpeters/vim-better-whitespace'

Plug 'farmergreg/vim-lastplace'

Plug 'tfnico/vim-gradle'

Plug 'airblade/vim-gitgutter'

Plug 'bling/vim-bufferline'

Plug 'skammer/vim-css-color'

Plug 'chemzqm/jsonc.vim'

" Plug 'roxma/nvim-yarp'

" }}}

" {{{ Supertab
Plug 'ervandew/supertab'
" }}}

" {{{ Startify

Plug 'mhinz/vim-startify'

let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}, {'z': '~/.zshrc'} ]
let g:startify_update_oldfiles = 1
let g:startify_fortune_use_unicode = 1
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1


" }}}

" {{{ Factorus
Plug 'apalmer1377/factorus'

map <Leader>x :FMExtractMethod<SPACE>
map <Leader>rm :FRenameMacro<Space>
map <Leader>rc :FRenameClass<Space>
map <Leader>ra :FRenameArg<Space>
map <Leader>rf :FRenameField<Space>

" }}}

" {{{ Commentary
Plug 'tpope/vim-commentary'

map <Leader>/ :Commentary<CR>
" }}}

" {{{ File management
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

map <Leader>f :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
" }}}

" {{{ Syntastic
Plug 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1

let g:syntastic_tex_checkers=['lacheck']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_aggregate_errors = 1

" }}}

" {{{ Colorscheme

Plug 'flazz/vim-colorschemes'

" }}}

" {{{ Lightline
Plug 'itchyny/lightline.vim'

" }}}

" {{{ Snippets
" Remove snippets, since I don't use them
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" }}}

" {{{ Rainbow
Plug 'luochen1990/rainbow'

let g:rainbow_active = 1

" }}}

" {{{ Tagbar
Plug 'majutsushi/tagbar'

nnoremap <F8> :Tagbar
"}}}

" {{{ vim-stay
Plug 'zhimsel/vim-stay'

set viewoptions-=options
" }}}

" {{{ Unimpaired
Plug 'tpope/vim-unimpaired'
" }}}

" {{{ FastFold
Plug 'Konfekt/FastFold'
" }}}

" {{{ Prettier

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:prettier#exec_cmd_async = 1

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'true'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'false'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" }}}

"}}}

" {{{ Completion

" " {{{ ncm2
" Plug 'ncm2/ncm2'

" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-match-highlight'
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'ncm2/ncm2-markdown-subscope'
" Plug 'ncm2/ncm2-jedi'
" Plug 'ncm2/ncm2-tern'

" Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'

" Plug 'autozimu/LanguageClient-neovim', {
" 						\ 'branch': 'next',
" 						\ 'do': 'bash install.sh',
" 						\ }

" let g:LanguageClient_serverCommands = {
"     \ 'java': ['/usr/bin/jdtls'],
"     \ }

" let g:LanguageClient_autoStart = 1
" set completeopt=noinsert,menuone,noselect

"   " suppress the annoying 'match x of y', 'The only match' and 'Pattern not" found' messages
" set shortmess+=c

" " Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" " inoremap <silent> <expr> <CR> ((pumvisible() && empty(v:completed_item)) ?  '\<c-y>\<cr>' : (!empty(v:completed_item) ? ncm2_ultisnips#expand_or('', 'n') : '\<CR>' ))

" imap <expr> <c-u> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
" smap <c-u> <Plug>(ultisnips_expand)


" " for contents of settings.json for vue-language-server
" let g:LanguageClient_completionPreferTextEdit = 1

" " the suddennly popup of diagnostics sign is kind of annoying
" let g:LanguageClient_diagnosticsSignsMax = 0

" " }}}

" {{{ YCM

Plug 'Valloric/YouCompleteMe'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" }}}

" }}}

" {{{ Language specific

" {{{ JSON
augroup json_ft
	au!
	autocmd BufNewFile,BufRead *.json set syntax=jsonc
augroup END
" }}}

" {{{ Web

" Plug 'ncm2/ncm2-html-subscope'

" Plug 'ncm2/ncm2-cssomni'

" }}}

" {{{ Typescript

Plug 'HerringtonDarkholme/yats.vim'

" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" }}}

" {{{ Clang

" Plug 'ncm2/ncm2-pyclang'

" let g:ncm2_pyclang#database_path = [
" 			\ 'compile_commands.json',
" 			\ 'build/compile_commands.json'
" 			\ ]
" let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so'

" autocmd FileType c,cpp nnoremap <buffer> gd :<c-u>call ncm2_pyclang#goto_declaration()<cr>

" }}}

" {{{ Latex

Plug 'lervag/vimtex'

" Plug 'vim-pandoc/vim-pandoc'

" Plug 'vim-pandoc/vim-pandoc-syntax'

autocmd Filetype tex setl updatetime=1
" au BufReadPost *.tex setlocal spell spelllang=pl " Spellcheck

" let g:livepreview_previewer = 'zathura'

au FocusGained,BufEnter * :checktime

" au InsertEnter * call ncm2#enable_for_buffer()
" au Filetype tex call ncm2#register_source({
" 			\ 'name' : 'bibtex',
" 			\ 'priority': 8,
" 			\ 'complete_length': -1,
" 			\ 'scope': ['tex'],
" 			\ 'matcher': {'name': 'combine',
" 			\             'matchers': [
" 			\               {'name': 'prefix', 'key': 'word'},
" 			\               {'name': 'abbrfuzzy', 'key': 'abbr'},
" 			\               {'name': 'abbrfuzzy', 'key': 'menu'},
" 			\             ]},
" 			\ 'word_pattern': '\w+',
" 			\ 'complete_pattern': g:vimtex#re#ncm2#bibtex,
" 			\ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
" 			\ })

" }}}

" {{{ Rust

" Plug 'rust-lang/rust.vim'

" Plug 'ncm2/ncm2-racer'

" }}}

" {{{ Java

let g:syntastic_java_checkers = []

" }}}

" {{{ Twig

Plug 'nelsyeung/twig.vim'

" }}}

" {{{ MarkDown

Plug 'iamcco/mathjax-support-for-mkdp'

Plug 'iamcco/markdown-preview.vim'

" }}}

" {{{ Prose

Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'
Plug 'junegunn/goyo.vim'


let g:lexical#thesaurus = ['~/.config/nvim/thesaurus.pl.txt']
let g:lexical#thesaurus_key = '<leader>t'

function! ProseSetup() " {{{ ProseSetup
	echo "Setting prose"
	Goyo 100
	setl spell spelllang=pl
	setl formatoptions=t
	setl textwidth=100
	setl wrapmargin=0

	" Navigating with guides
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l

	" Word count:
	map <leader><leader>o :w !detex \| wc -w<CR>
	" Code snippets
	inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	inoremap ,em \emph{}<++><Esc>T{i
	inoremap ,bf \textbf{}<++><Esc>T{i
	vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	inoremap ,it \textit{}<++><Esc>T{i
	inoremap ,ct \textcite{}<++><Esc>T{i
	inoremap ,cp \parencite{}<++><Esc>T{i
	inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	inoremap ,li <Enter>\item<Space>
	inoremap ,ref \ref{}<Space><++><Esc>T{i
	inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	inoremap ,can \cand{}<Tab><++><Esc>T{i
	inoremap ,con \const{}<Tab><++><Esc>T{i
	inoremap ,v \vio{}<Tab><++><Esc>T{i
	inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	inoremap ,sc \textsc{}<Space><++><Esc>T{i
	inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,st <Esc>F{i*<Esc>f}i
	inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	inoremap ,tt \texttt{}<Space><++><Esc>T{i
	inoremap ,bt {\blindtext}
	inoremap ,nu $\varnothing$
	inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	inoremap ,rn (\ref{})<++><Esc>F}i
endfunction " }}}

autocmd BufRead,BufNewFile *.tex setl filetype=tex
autocmd BufRead,BufNewFile *.tex,*.md call ProseSetup()
" Plug 'reedes/vim-lexical'

" augroup lexical
"   autocmd!
"   autocmd FileType markdown,mkd,md call lexical#init()
"   autocmd FileType tex,latex call lexical#init()
"   " autocmd FileType text call lexical#init({ 'spell': 0 })
" augroup END
" Plug 'reedes/vim-pencil'
" Plug 'reedes/vim-lexical'

" let g:lexical#thesaurus = ['~/.config/nvim/thesaurus.pl.txt']
" let g:lexical#thesaurus_key = '<leader>t'

" augroup Prose
" 	autocmd!
" 	autocmd FileType latex,md,markdown,tex setlocal formatoptions=ant textwidth=80 wrapmargin=0
" 	autocmd FileType latex,md,markdown,tex call pencil#init()
" 				\ | call lexical#init()
" augroup end
>>>>>>> 17743620b72f490d76c2f3c47d7c55d079cc21d7

" }}}

" }}}

call plug#end()

" {{{ After plug#end
" These will not work if placed before plug#end for some reason, so they're here

colorscheme badwolf

" {{{Lightline
let g:lightline = {
			\   'colorscheme': 'one',
			\   'active': {
			\     'left':[ [ 'mode', 'paste' ],
			\              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
			\     ]
			\   },
			\   'component': {
			\     'lineinfo': ' %3l:%-2v',
			\   },
			\   'component_function': {
			\     'gitbranch': 'fugitive#head',
			\   }
			\ }
let g:lightline.separator = {
			\   'left': '', 'right': ''
			\}
let g:lightline.subseparator = {
			\   'left': '', 'right': ''
			\}
let g:lightline.tabline = {
			\   'left': [ ['tabs'] ],
			\   'right': [ ['close'] ]
			\ }
" }}}

" {{{ Make ultisnips and YCM work together
function! g:UltiSnips_Complete()
	call UltiSnips#ExpandSnippet()
	if g:ulti_expand_res == 0
		if pumvisible()
			return "\<C-n>"
		else
			call UltiSnips#JumpForwards()
			if g:ulti_jump_forwards_res == 0
				return "\<TAB>"
			endif
		endif
	endif
	return ""
endfunction

function! g:UltiSnips_Reverse()
	call UltiSnips#JumpBackwards()
	if g:ulti_jump_backwards_res == 0
		return "\<C-P>"
	endif

	return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
	let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"

" }}}
"}}}
