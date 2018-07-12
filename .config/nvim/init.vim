call plug#begin('/home/killermenpl/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'scrooloose/syntastic'

Plug 'flazz/vim-colorschemes'

Plug 'itchyny/lightline.vim'

" Plug 'ctrlpvim/ctrlp.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'farmergreg/vim-lastplace'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tfnico/vim-gradle'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'Shougo/neoinclude.vim'

Plug 'airblade/vim-gitgutter'

Plug 'lervag/vimtex'

Plug 'vim-pandoc/vim-pandoc'

Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'luochen1990/rainbow'

Plug 'majutsushi/tagbar'

Plug 'apalmer1377/factorus'

Plug 'bling/vim-bufferline'

Plug 'leafgarland/typescript-vim'

Plug 'mattn/emmet-vim'

Plug 'skammer/vim-css-color'

Plug 'jaxbot/browserlink.vim'

Plug 'HerringtonDarkholme/yats.vim'

Plug 'Shougo/neoinclude.vim'

Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

Plug 'chemzqm/jsonc.vim'


Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

call plug#end()


"Syntastic
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
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline


""DEOPLETE

"let g:deoplete#enable_at_startup = 1

"let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header='/usr/lib/clang/6.0.0/include'
"let g:deoplete#sources#ternjs#docs = 1
"let g:deoplete#sources#ternjs#types = 1
"let g:deoplete#sources#ternjs#case_insensitive = 1

" CoC
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:rainbow_active = 1

" augroup my_cm_setup
" 	autocmd!
" 	autocmd User CmSetup call cm#register_source({
" 				\ 'name' : 'vimtex',
" 				\ 'priority': 8,
" 				\ 'scoping': 1,
" 				\ 'scopes': ['tex'],
" 				\ 'abbreviation': 'tex',
" 				\ 'cm_refresh_patterns': g:vimtex#re#ncm,
" 				\ 'cm_refresh': {'omnifunc': 'vimtex#complete#omnifunc'},
" 				\ })
" augroup END

set encoding=utf-8


colorscheme badwolf

" golden ratio
let g:golden_ratio_exclude_nonmodifiable = 1


" latex
autocmd Filetype tex setl updatetime=1
au BufReadPost *.tex setlocal spell spelllang=pl " Spellcheck

" let g:livepreview_previewer = 'zathura'

au FocusGained,BufEnter * :checktime

set number

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

let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'
" map c-x and c-v to work as they do in windows, only in insert mode
vm <c-x> "+x
vm <c-c> "+y
cno <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']
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

" More natural splits
set splitbelow
set splitright

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

map <Leader>f :NERDTreeToggle<CR>
map <Leader>g mggg=G`g:StripWhitespace<CR>
map <Leader>/ :Commentary<CR>
map <Leader>b :ls<CR>:b<Space>
" map <Leader>bn :bn<CR>
" map <Leader>bb :bp<CR>
map <Leader>x :FMExtractMethod<SPACE>
map <Leader>rm :FRenameMacro<Space>
map <Leader>rc :FRenameClass<Space>
map <Leader>ra :FRenameArg<Space>
map <Leader>rf :FRenameField<Space>
map <C-p> :FZF<CR>
noremap <leader>a ggVG

