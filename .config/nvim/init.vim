call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'


Plug 'tpope/vim-commentary'

Plug 'scrooloose/syntastic'


Plug 'flazz/vim-colorschemes'

Plug 'itchyny/lightline.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'farmergreg/vim-lastplace'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tfnico/vim-gradle'

Plug 'roxma/nvim-completion-manager'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'roxma/ncm-clang'

Plug 'Shougo/neoinclude.vim'

Plug 'airblade/vim-gitgutter'

Plug 'lervag/vimtex'

Plug 'vim-pandoc/vim-pandoc'

Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

Plug 'luochen1990/rainbow'

" Plugj 'w0rp/ale'
Plug 'majutsushi/tagbar'

Plug 'draganczukp/factorus', {'branch': 'cpp' }

" Plug 'vim-scripts/refactor'

Plug 'bling/vim-bufferline'

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

" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'

" Disable or enable loclist at the bottom of vim
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0

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

" Setup compilers for languages

let g:ale_linters = {
			\  'cs':['syntax', 'semantic', 'issues'],
			\  'python': ['pylint'],
			\  'java': ['javac']
			\ }

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:rainbow_active = 1

augroup my_cm_setup
	autocmd!
	autocmd User CmSetup call cm#register_source({
				\ 'name' : 'vimtex',
				\ 'priority': 8,
				\ 'scoping': 1,
				\ 'scopes': ['tex'],
				\ 'abbreviation': 'tex',
				\ 'cm_refresh_patterns': g:vimtex#re#ncm,
				\ 'cm_refresh': {'omnifunc': 'vimtex#complete#omnifunc'},
				\ })
augroup END

set encoding=utf-8


" let g:airline_powerline_fonts = 1

" let g:airline_theme='badwolf'

" let g:airline#extensions#syntastic#enabled = 1
" let g:airline_skip_empty_sections = 1

" let g:airline#extensions#tabline#enabled = 1

colorscheme badwolf

"Javacomplete
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
" autocmd FileType java JCEnable
" set omnifunc=syntaxcomplete#Complete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#omni_patterns = {}
" let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
" let g:deoplete#auto_completion_start_length = 2
" let g:deoplete#sources = {}
" let g:deoplete#sources._ = []
" let g:deoplete#file#enable_buffer_path = 1

" let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
" let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
" let g:deoplete#sources.java = ['jc', 'javacomplete2', 'file', 'buffer', 'ultisnips']

" if !exists('g:deoplete#omni#input_patterns')
" 	let g:deoplete#omni#input_patterns = {}
" endif
" " Auto close preview pane in Deoplete
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


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
"map <Leader>o :CtrlPMixed<CR>
map <Leader>/ :Commentary<CR>
map <Leader>bn :bn<CR>
map <Leader>bb :bp<CR>
map <Leader>fx :FMExtractMethod<SPACE>
map <Leader>fm :FRenameMacro<Space>
map <Leader>fc :FRenameClass<Space>
map <Leader>fa :FRenameArg<Space>
map <Leader>ff :FRenameField<Space>
