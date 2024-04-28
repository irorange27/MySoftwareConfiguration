set nocompatible

set mouse=a

""""""""""""""""""""""""""""""" Plugin vundleVim

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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show
set number          " Add numbers to each line on the left-hand side.
set cursorline      " Highlight cursor line underneath the cursor horizontally
set cursorcolumn    " Highlight cursor line underneath the cursor vertically.
set ruler
set showmode        " Show the mode you are on the last line.
set showcmd         " Show prtial command you type in the last line of the screen.
set colorcolumn=80
set matchtime=1
set sidescroll=1

syntax on           " Turn syntax highlighting on.
set history=2000
set autoread
set nobackup
set noswapfile
set magic


if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

filetype on         " Enable type file detection.
filetype plugin on  " Enable plugins and load plugin for the detected file type
filetype indent on  " Load an indent file for the detected file type.

set encoding=utf-8


" search
set smartcase
set ignorecase      " Ignore capital letters during search.
set incsearch       " While searching though a file incrementally highlight matching charcter
set hlsearch        " Use highlighting when doing a serch.

" tab
set expandtab       " Use space charctersinstead of tabs.
set smarttab

" indent
set autoindent
set smartindent
set shiftround
set shiftwidth=4    " Set shift width to 4 spaces.
set tabstop=4       " Set tab width to 4 columns.
set softtabstop=4   

" theme
set background=dark
colorscheme desert

" status line
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2

" mappings
let mapleader = ";"

inoremap jj <Esc>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap 00 $
nnoremap <space> :
nnoremap Y y$






