set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

call vundle#end()      

filetype plugin indent on
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" set ttyfast
set showmatch
set wildmenu
set hlsearch
set ignorecase
set smartcase
set confirm
set ruler 
set backspace=indent,eol,start
set clipboard=unnamed

" prevent messy paste from clipboard
set pastetoggle=<F2>
syntax enable
set rnu
set number
set background=dark
" highlight Normal ctermfg=grey ctermbg=black
colorscheme pilote

"autocomplete brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}


" Stupid shift key fixes
map :W :w            
map :WQ :wq
map :wQ :wq
map :Q :q

" Make vimrc easy to update
" ",v brings up my .vimrc
" ",V reloads it -- making all changes active (have to save first)
map ,v :sp ~/.vimrc<CR><C-W>_
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

