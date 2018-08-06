call plug#begin('/home/killermenpl/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'scrooloose/syntastic'

Plug 'flazz/vim-colorschemes'

Plug 'itchyny/lightline.vim'

Plug 'ntpeters/vim-better-whitespace'

Plug 'farmergreg/vim-lastplace'

Plug 'tfnico/vim-gradle'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

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

Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

Plug 'chemzqm/jsonc.vim'

Plug 'rust-lang/rust.vim'

Plug 'ncm2/ncm2'

Plug 'roxma/nvim-yarp'

Plug 'ncm2/ncm2-bufword'

Plug 'ncm2/ncm2-tmux'

Plug 'ncm2/ncm2-path'

Plug 'ncm2/ncm2-jedi'

Plug 'ncm2/ncm2-tagprefix'

Plug 'jsfaint/gen_tags.vim'

Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'

Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'

Plug 'ncm2/ncm2-cssomni'

Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

Plug 'ncm2/ncm2-racer'

Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'

Plug 'ncm2/ncm2-html-subscope'

Plug 'ncm2/ncm2-markdown-subscope'

" Plug 'ncm2/ncm2-match-highlight'

Plug 'autozimu/LanguageClient-neovim', {
			\ 'branch': 'next',
			\ 'do': 'bash install.sh',
			\ }

call plug#end()

" Completion
autocmd BufEnter * call ncm2#enable_for_buffer()

" :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
set shortmess+=c

au TextChangedI * call ncm2#auto_trigger()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:LanguageClient_serverCommands = {
			\ 'typescript': ['javascript-typescript-stdio']
			\ }

let g:ncm2#match_highlight = 'bold'
let g:ncm2#match_highlight = 'sans-serif'
let g:ncm2#match_highlight = 'sans-serif-bold'
let g:ncm2#match_highlight = 'mono-space'

" default
let g:ncm2#match_highlight = 'double-struck'
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

au User Ncm2Plugin call ncm2#register_source({
			\ 'name' : 'tex',
			\ 'priority': 9,
			\ 'subscope_enable': 1,
			\ 'scope': ['tex','latex'],
			\ 'mark': 'tex',
			\ 'word_pattern': '\\[\w\-]+',
			\ 'complete_pattern': ':\s*',
			\ 'on_complete': ['ncm2#on_complete#omni', ],
			\ })

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

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




let g:rainbow_active = 1
colorscheme badwolf



" golden ratio
let g:golden_ratio_exclude_nonmodifiable = 1


" latex
autocmd Filetype tex setl updatetime=1
au BufReadPost *.tex setlocal spell spelllang=pl " Spellcheck

" let g:livepreview_previewer = 'zathura'

au FocusGained,BufEnter * :checktime

" nvim 'set' options
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

