" Syntax and color scheme
syntax enable
set background=light
colorscheme basic-light

" Editing
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set ai
set si
set wrap
set ruler
set number
set hlsearch

" Fuzzy Finder
set rtp+=/usr/local/opt/fzf

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'mustache/vim-mustache-handlebars'
Plug 'flazz/vim-colorschemes'
call plug#end()
