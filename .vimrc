" Syntax and color scheme
syntax enable
set background=dark
colorscheme Monokai

" Editing set hlsearch
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
set relativenumber
set backspace=indent,eol,start
set ignorecase
set smartcase

" Fuzzy Finder
set rtp+=/usr/local/opt/fzf

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" TODO: Pick a leader key
let mapleader = ","
map <leader>h :sp<cr> " clear search
map <leader>v :vs<cr> " clear search
map <leader>x :q<cr>
map <leader><space> :let @/=''<cr> " clear search

" TERN PLUGIN config
"let tern#is_show_argument_hints_enabled = "on_move"
"let tern_show_signature_in_pum=1
"let tern_show_argument_hints="on_hold"
"set updatetime=1000
"set noshowmode " requested for tern_show_argument_hints
"cabbrev h vert h

" ternjs stuf
":nmap <Leader>td :TernDoc<cr>
":autocmd CompleteDone * pclose

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
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'scrooloose/nerdtree'                                                                                  
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }                                           
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

map <C-h> :NERDTreeToggle<CR>

let g:fzf_command_prefix = ''

let g:javascript_plugin_jsdoc = 1
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']

" reload vimrc whenever I save it
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost vimrc,.vimrc,*.vim source $MYVIMRC
augroup END " }
" disable syntax highlighting on massive files
augroup big_files
    autocmd!
    autocmd Filetype * if (getfsize(@%) > 1000000) | setlocal syntax=OFF | endif
    " autocmd Filetype * :echom "a"
augroup END

" Key Bindings
  " insert mode shortcuts
    " normal mode shortucts
    :let mapleader = " "
    :nmap <Leader><Leader> :w<Enter>
    :nmap <Leader>sw "zyiw:Ag z

