set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'junegunn/vim-easy-align'
Plugin 'marijnh/tern_for_vim'
Plugin 'mhinz/vim-signify'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'

call vundle#end()

autocmd VimEnter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax on
filetype plugin on
filetype indent on

" :W sudo saves the file
command W w !sudo tee % > /dev/null

set cmdheight=2
set laststatus=2

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
set smartcase

set hlsearch
set incsearch

" Show matching brackets
set showmatch
set mat=2

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set copyindent
set si "Smart indent

" Space searches
map <space> /

set number

" Remap keys for split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
