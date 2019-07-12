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
inoremap <Leader><Leader> <Esc>/<++><Enter>"_c4l
vnoremap <Leader><Leader> <Esc>/<++><Enter>"_c4l
map <Leader><Leader> <Esc>/<++><Enter>:noh<CR>"_c4l

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
map <Leader>b :ls<CR>:b<Space>
map <Leader>g mggg=G`g:StripWhitespace<CR>

" }}}

" {{{ suckless stuffs

autocmd BufWritePost config.h !~/bin/compile %

" }}}

" }}}

" {{{ No config needed

" Plug 'tpope/vim-fugitive'

Plug 'ntpeters/vim-better-whitespace'

Plug 'farmergreg/vim-lastplace'

" Plug 'tfnico/vim-gradle'

" Plug 'airblade/vim-gitgutter'

" Plug 'skammer/vim-css-color'

Plug 'chemzqm/jsonc.vim'

" Plug 'roxma/nvim-yarp'

Plug 'chriskempson/base16-vim'

Plug 'kovetskiy/sxhkd-vim'

" }}}

" {{{ Supertab

" Plug 'ervandew/supertab'

" }}}

" {{{ Startify

" Plug 'mhinz/vim-startify'

" let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}, {'z': '~/.zshrc'} ]
" let g:startify_update_oldfiles = 1
" let g:startify_fortune_use_unicode = 1
" let g:startify_change_to_dir = 0
" let g:startify_change_to_vcs_root = 1

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

" {{{ Surrond

Plug 'tpope/vim-surround'

" }}}

" {{{ File management

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

map <Leader>f :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

" }}}

" {{{ Syntastic

" Plug 'scrooloose/syntastic'

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_java_checkers=['javac']
" let g:syntastic_java_javac_config_file_enabled = 1

" let g:syntastic_tex_checkers=['lacheck']

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:syntastic_style_error_symbol = '✗'
" let g:syntastic_style_warning_symbol = '⚠'
" let g:syntastic_aggregate_errors = 1

" }}}

" {{{ Colorscheme

Plug 'flazz/vim-colorschemes'

Plug 'Nequo/vim-allomancer'

" }}}

" {{{ Lightline

Plug 'itchyny/lightline.vim'

" }}}

" {{{ Snippets

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

" {{{ Vista

Plug 'liuchengxu/vista.vim'

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

let main_wiki = {}
let main_wiki.path = '~/vimwiki'
let main_wiki.nested_syntaxes = {'python': 'python', 'java': 'java'}
let main_wiki.auto_toc = 1

let g:vimwiki_list = [main_wiki]

let g:vimviki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 2
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_listsym_rejected = '✗'
let g:vimwiki_folding = expr
let g:vimwiki_dir_link = index

" }}}

" {{{ ---Tagbar

" Plug 'majutsushi/tagbar'

" nnoremap <F8> :Tagbar<CR>

"}}}

" {{{ vim-stay

" Plug 'zhimsel/vim-stay'

" set viewoptions-=options

" }}}

" {{{ Unimpaired

Plug 'tpope/vim-unimpaired'

" }}}

" {{{ FastFold

Plug 'Konfekt/FastFold'

" }}}

"}}}

" {{{ Completion

" {{{ YCM

" Plug 'Valloric/YouCompleteMe'

" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" }}}

" {{{ NCM2

" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'
" Plug 'yuki-ycino/ncm2-dictionary'
" Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
" Plug 'ncm2/ncm2-ultisnips'
" autocmd BufEnter * call ncm2#enable_for_buffer()

" set completeopt=noinsert,menuone,noselect

" let g:ncm2_look_enabled = 1

" }}}

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

" {{{ Java

" Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
" Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}

" }}}

" {{{ C/C++

" Plug 'ncm2/ncm2-pyclang'
" Plug 'ericcurtin/CurtineIncSw.vim'

" autocmd FileType c,cpp nnoremap <buffer> <Leader><Leader> :call CurtineIncSw()<cr>
" let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so'

" autocmd FileType c,cpp nnoremap <buffer> gd :<c-u>call ncm2_pyclang#goto_declaration()<cr>
" let g:ncm2_pyclang#database_path = [
" 			\ 'compile_commands.json',
" 			\ 'build/compile_commands.json'
" 			\ ]
" " }}}

" {{{ JSON

augroup json_ft
	au!
	autocmd BufNewFile,BufRead *.json set syntax=jsonc
augroup END

" }}}

" {{{ Typescript

Plug 'HerringtonDarkholme/yats.vim'

" Plug 'ncm2/nvim-typescript', {'do': './install.sh'}

" }}}

" {{{ SCSS

Plug 'shmargum/vim-sass-colors'

" autocmd BufEnter *.scss call ncm2#register_source({'name' : 'css',
" 			\ 'priority': 9,
" 			\ 'subscope_enable': 1,
" 			\ 'scope': ['css', 'scss', 'less'],
" 			\ 'mark': 'css',
" 			\ 'word_pattern': '[\w\-]+',
" 			\ 'complete_pattern': ':\s*',
" 			\ 'on_complete': ['ncm2#on_complete#omni',
" 			\               'csscomplete#CompleteCSS'],
" 			\ })

" }}}

" {{{ Latex

Plug 'lervag/vimtex'

autocmd Filetype tex setl updatetime=1

au FocusGained,BufEnter * :checktime

autocmd BufRead,BufNewFile *.tex setl filetype=tex
autocmd BufRead,BufNewFile *.tex source ~/.config/nvim/snippets/tex.vim
autocmd BufRead,BufNewFile *.tex nmap <F12> :40vnew \| 0read ! sed -r '/inoremap (,.*)\<esc\>.*/\\1/gi' < ~/.config/nvim/snippets/tex.vim<CR>

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

" }}}

" {{{ Prose

Plug 'junegunn/goyo.vim'

function! ProseSetup() " {{{ ProseSetup
	" echo "Setting prose"
	" Goyo 100
	setl spell spelllang=pl
	setl formatoptions=t
	setl textwidth=100
	setl wrapmargin=0

endfunction " }}}

autocmd BufRead,BufNewFile *.tex,*.md call ProseSetup()

" }}}

" {{{ html

autocmd BufRead,BufNewFile *.html source ~/.config/nvim/snippets/html.vim
autocmd BufRead,BufNewFile *.html nmap <F12> :40vnew \| 0read ! sed -r '/inoremap (,.*)\<esc\>.*/\\1/gi' < ~/.config/nvim/snippets/html.vim<CR>

" }}}

" {{{ Vim-wiki

Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" }}}

" {{{ Rust

" Plug 'ncm2/ncm2-racer'

" }}}

" }}}

call plug#end()

" {{{ After plug#end
" These will not work if placed before plug#end for some reason, so they're here


if filereadable(expand("~/.vimrc_background"))
	set termguicolors
	let base16colorspace=256
	source ~/.vimrc_background
endif

" {{{Lightline
let g:lightline = {
			\   'colorscheme': 'one',
			\   'active': {
			\     'left':[ [ 'mode', 'paste' ],
		  	\             [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ],
			\     ]
			\   },
			\   'component': {
			\     'lineinfo': ' %3l:%-2v',
			\   },
			\   'component_function': {
			\     'gitbranch': 'fugitive#head',
			\   'cocstatus': 'coc#status'
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

" " {{{ Make ultisnips and YCM work together
" function! g:UltiSnips_Complete()
" 	call UltiSnips#ExpandSnippet()
" 	if g:ulti_expand_res == 0
" 		if pumvisible()
" 			return "\<C-n>"
" 		else
" 			call UltiSnips#JumpForwards()
" 			if g:ulti_jump_forwards_res == 0
" 				return "\<TAB>"
" 			endif
" 		endif
" 	endif
" 	return ""
" endfunction

" function! g:UltiSnips_Reverse()
" 	call UltiSnips#JumpBackwards()
" 	if g:ulti_jump_backwards_res == 0
" 		return "\<C-P>"
" 	endif

" 	return ""
" endfunction


" if !exists("g:UltiSnipsJumpForwardTrigger")
" 	let g:UltiSnipsJumpForwardTrigger = "<tab>"
" endif

" if !exists("g:UltiSnipsJumpBackwardTrigger")
" 	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" endif

" au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
" au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"

" }}}

"}}}
