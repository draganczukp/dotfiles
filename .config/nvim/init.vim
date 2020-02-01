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
set shiftwidth=4
set tabstop=4

set autoread

set ruler

set cursorline		" highlight current line
set cursorcolumn	 " highlight current column

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
set formatoptions-=r
set formatoptions-=o

set spelllang=pl

set mouse=nv

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


" Navigating with guides
inoremap ,, <Esc>/<++><Enter>:noh<CR>"_c4l
vnoremap ,, <Esc>/<++><Enter>:noh<CR>"_c4l
map ,, <Esc>/<++><Enter>:noh<CR>"_c4l

nnoremap <esc> :noh<return><esc>

" Exit terminal mode
tnoremap <C-x> <C-\><C-n>

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
map <Leader>g mggg=G`g:StripWhitespace<CR>

" }}}

" {{{ suckless stuffs

autocmd BufWritePost config.h !~/bin/compile %

" }}}

" }}}

" {{{ No config needed

packadd! justify

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-rhubarb'

Plug 'ntpeters/vim-better-whitespace'

Plug 'farmergreg/vim-lastplace'

Plug 'kjwon15/vim-transparent'

" Plug 'tfnico/vim-gradle'

" Plug 'airblade/vim-gitgutter'

" Plug 'skammer/vim-css-color'

Plug 'chemzqm/jsonc.vim'

" Plug 'roxma/nvim-yarp'

Plug 'chriskempson/base16-vim'

Plug 'kovetskiy/sxhkd-vim'

Plug 'jez/vim-superman'

Plug 'tpope/vim-surround'

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
" Exit if only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }

Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

map <Leader>f :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <Leader>b :Buffers<CR>

" }}}

" {{{ Colorscheme

Plug 'flazz/vim-colorschemes'

" }}}

" {{{ Lightline

" Config is below, since it doesn't work here
" Plug 'itchyny/lightline.vim'

" }}}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline_theme='badwolf'

" {{{ Snippets

Plug 'SirVer/ultisnips'

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

" {{{ Vista

Plug 'liuchengxu/vista.vim'

nnoremap <F8> :Vista<CR>

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
" let g:vista_executive_for = {
"   \ 'cpp': 'vim_lsp',
"   \ 'php': 'vim_lsp',
"   \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
			\ 'haskell': 'hasktags -x -o - -c',
			\ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
" let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" }}}

" {{{ VimWiki

Plug 'vimwiki/vimwiki'
let main_wiki = {}
let main_wiki.path = '~/vimwiki'
let main_wiki.nested_syntaxes = {'python': 'python', 'java': 'java'}
let main_wiki.auto_toc = 1

let notes_wiki = {}
let notes_wiki.path = '~/Dokumenty/studia'
let notes_wiki.syntax = 'markdown'
let notes_wiki.ext = '.md'
let notes_wiki.auto_toc = 1
let notes_wiki.index = 'notes'


let g:vimwiki_list = [main_wiki, notes_wiki]

let g:vimviki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 2
let g:vimwiki_listsym_rejected = '×'
let g:vimwiki_folding = 'expr'
let g:vimwiki_dir_link = 'index'

" }}}

" {{{ Unimpaired

Plug 'tpope/vim-unimpaired'

" }}}

" {{{ FastFold

Plug 'Konfekt/FastFold'

" }}}

" }}}

" {{{ Completion

" {{{ coc.nvim

" Install nightly build, replace ./install.sh with install.cmd on windows
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>g  <Plug>(coc-format-selected)
nmap <leader>g  <Plug>(coc-format-selected)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" }}}

" }}}

" {{{ Language specific

" {{{ JSON

augroup json_ft
	au!
	autocmd BufNewFile,BufRead *.json set syntax=jsonc
augroup END

" }}}

" {{{ Typescript

Plug 'HerringtonDarkholme/yats.vim'

" }}}

" {{{ SCSS

Plug 'shmargum/vim-sass-colors'

" }}}

" {{{ Latex

Plug 'lervag/vimtex'
let g:vimtex_view_method='zathura'

let g:vimtex_compiler_latexmk = {
			\ 'options' : [
			\ '-verbose',
			\ '-xelatex',
			\ '-synctex=1',
			\ '-interaction=nonstopmode',
			\ ],
			\ }

" For some reason not all .tex file get the correct filetype
" This is meant to fix that
autocmd BufRead,BufNewFile *.tex setfiletype tex

" }}}

" {{{ MarkDown

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

let g:mkdp_page_title = '${name}'
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {
			\ 'server': 'http://0.0.0.0:8080'
			\ },
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle'
			\ }
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = 'md-preview'

" }}}

" {{{ Prose

Plug 'junegunn/goyo.vim'

function! ProseSetup() " {{{ ProseSetup
	" echo "Setting prose"
	" Goyo 100
	setl spell spelllang=pl,en
	setl formatoptions=t
	setl textwidth=80
	setl wrapmargin=0

endfunction " }}}

autocmd BufRead,BufNewFile *.tex,*.md call ProseSetup()

" }}}


" }}}

call plug#end()

" {{{ After plug#end
" These will not work if placed before plug#end for some reason, so they're here
colorscheme badwolf

" {{{ Lightline
" let g:lightline = {
" 			\   'colorscheme': 'one',
" 			\   'active': {
" 			\     'left':[ [ 'mode', 'paste' ],
" 		  	\             [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ],
" 			\     ]
" 			\   },
" 			\   'component': {
" 			\     'lineinfo': ' %3l:%-2v',
" 			\   },
" 			\   'component_function': {
" 			\     'gitbranch': 'fugitive#head',
" 			\   'cocstatus': 'coc#status'
" 			\   }
" 			\ }
" let g:lightline.separator = {
" 			\   'left': '', 'right': ''
" 			\}
" let g:lightline.subseparator = {
" 			\   'left': '', 'right': ''
" 			\}
" let g:lightline.tabline = {
" 			\   'left': [ ['tabs'] ],
" 			\   'right': [ ['close'] ]
" 			\ }
" " }}}

"}}}
