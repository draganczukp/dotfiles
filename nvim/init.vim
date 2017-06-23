call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/syntastic'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
"Plug 'tombh/novim-mode'
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'valloric/youcompleteme'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'


call plug#end() 

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Airline
let g:airline_powerline_fonts = 1

"YCM + Eclim
let g:EclimCompletionMethod = 'omnifunc'

"Keys

map <Lead>o :CtrlPMixed<CR>

