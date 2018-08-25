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

Plug 'roxma/nvim-yarp'
" }}}

" {{{ Factorus
Plug 'apalmer1377/factorus'

map <Leader>x :FMExtractMethod<SPACE>
map <Leader>rm :FRenameMacro<Space>
map <Leader>rc :FRenameClass<Space>
map <Leader>ra :FRenameArg<Space>
map <Leader>rf :FRenameField<Space>

" }}}
"
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
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger		= '<cr>' " '<Plug>(ultisnips_expand)'
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
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

"}}}

" {{{ Completion

Plug 'ncm2/ncm2'

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-match-highlight'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-tern'

Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'

Plug 'autozimu/LanguageClient-neovim', {
						\ 'branch': 'next',
						\ 'do': 'bash install.sh',
						\ }

let g:LanguageClient_serverCommands = {
    \ 'java': ['/usr/bin/jdtls'],
    \ }

let g:LanguageClient_autoStart = 1
set completeopt=noinsert,menuone,noselect

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not" found' messages
set shortmess+=c

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" inoremap <silent> <expr> <CR> ((pumvisible() && empty(v:completed_item)) ?  "\<c-y>\<cr>" : (!empty(v:completed_item) ? ncm2_ultisnips#expand_or("", 'n') : "\<CR>" ))

imap <expr> <c-u> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
smap <c-u> <Plug>(ultisnips_expand)


" for contents of settings.json for vue-language-server
let g:LanguageClient_completionPreferTextEdit = 1

" the suddennly popup of diagnostics sign is kind of annoying
let g:LanguageClient_diagnosticsSignsMax = 0
"}}}

" {{{ Language specific

" {{{ Web

Plug 'ncm2/ncm2-html-subscope'

Plug 'ncm2/ncm2-cssomni'

" }}

" {{{ Clang

Plug 'ncm2/ncm2-pyclang'

let g:ncm2_pyclang#database_path = [
			\ 'compile_commands.json',
			\ 'build/compile_commands.json'
			\ ]
let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so'

autocmd FileType c,cpp nnoremap <buffer> gd :<c-u>call ncm2_pyclang#goto_declaration()<cr>

" }}}

" {{{ Latex
Plug 'lervag/vimtex'

Plug 'vim-pandoc/vim-pandoc'

Plug 'vim-pandoc/vim-pandoc-syntax'

autocmd Filetype tex setl updatetime=1
au BufReadPost *.tex setlocal spell spelllang=pl " Spellcheck

" let g:livepreview_previewer = 'zathura'

au FocusGained,BufEnter * :checktime

au InsertEnter * call ncm2#enable_for_buffer()
au Filetype tex call ncm2#register_source({
			\ 'name' : 'vimtex-cmds',
			\ 'priority': 8,
			\ 'complete_length': -1,
			\ 'scope': ['tex'],
			\ 'matcher': {'name': 'prefix', 'key': 'word'},
			\ 'word_pattern': '\w+',
			\ 'complete_pattern': g:vimtex#re#ncm2#cmds,
			\ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
			\ })
au Filetype tex call ncm2#register_source({
			\ 'name' : 'vimtex-labels',
			\ 'priority': 8,
			\ 'complete_length': -1,
			\ 'scope': ['tex'],
			\ 'matcher': {'name': 'combine',
			\             'matchers': [
			\               {'name': 'substr', 'key': 'word'},
			\               {'name': 'substr', 'key': 'menu'},
			\             ]},
			\ 'word_pattern': '\w+',
			\ 'complete_pattern': g:vimtex#re#ncm2#labels,
			\ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
			\ })
au Filetype tex call ncm2#register_source({
			\ 'name' : 'vimtex-files',
			\ 'priority': 8,
			\ 'complete_length': -1,
			\ 'scope': ['tex'],
			\ 'matcher': {'name': 'combine',
			\             'matchers': [
			\               {'name': 'abbrfuzzy', 'key': 'word'},
			\               {'name': 'abbrfuzzy', 'key': 'abbr'},
			\             ]},
			\ 'word_pattern': '\w+',
			\ 'complete_pattern': g:vimtex#re#ncm2#files,
			\ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
			\ })
au Filetype tex call ncm2#register_source({
			\ 'name' : 'bibtex',
			\ 'priority': 8,
			\ 'complete_length': -1,
			\ 'scope': ['tex'],
			\ 'matcher': {'name': 'combine',
			\             'matchers': [
			\               {'name': 'prefix', 'key': 'word'},
			\               {'name': 'abbrfuzzy', 'key': 'abbr'},
			\               {'name': 'abbrfuzzy', 'key': 'menu'},
			\             ]},
			\ 'word_pattern': '\w+',
			\ 'complete_pattern': g:vimtex#re#ncm2#bibtex,
			\ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
			\ })

" }}}

" {{{ Rust

Plug 'rust-lang/rust.vim'

Plug 'ncm2/ncm2-racer'

" }}}

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

"}}}
