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

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" TERN PLUGIN config
" let tern#is_show_argument_hints_enabled = "on_move"
let tern_show_signature_in_pum=1
let tern_show_argument_hints="on_hold"
set updatetime=1000
set noshowmode " requested for tern_show_argument_hints
cabbrev h vert h

" ternjs stuf
:nmap <Leader>td :TernDoc<cr>
:autocmd CompleteDone * pclose

" Vundle plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

" Plugged plugins
call plug#begin('~/.vim/plugged')
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'mustache/vim-mustache-handlebars'
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
call plug#end()
