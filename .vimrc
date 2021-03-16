" Syntax and color scheme
packadd! dracula
syntax enable
set background=dark
colorscheme monokai

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

" Sets cursorline and ensures it's only showing in the active pane
set cursorline
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" Change cursor shape in different modes
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" hops over visual lines (real vs long lines)
nmap j gj
nmap k gk

" Don't lose selection when shifting sidewards
xnoremap <  <gv
xnoremap >  >gv

" Fuzzy Finder
map <C-t> :FZF<CR>
set rtp+=/usr/local/opt/fzf

let mapleader = ","
map <leader>h :sp<cr> " clear search
map <leader>v :vs<cr> " clear search
map <leader>x :q<cr>
map <leader><space> :let @/=''<cr> " clear search

" Plugged plugins
call plug#begin('~/.vim/plugged')
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'mustache/vim-mustache-handlebars'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'                                                                                  
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }                                           
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'dracula/vim', { 'as': 'dracula' }
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

