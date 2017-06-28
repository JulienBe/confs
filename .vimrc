syntax on
set autochdir
set smartcase
set ek

set incsearch
set hlsearch

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set encoding=utf-8
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set noeb
set ttyfast
set backspace=indent,eol,start
set wrap
set textwidth=0
set formatoptions=qrn1
"set colorcolumn=85
set nolist
set listchars=tab:▸\ ,eol:¬

" ignore
set wildignore=*.swp,*.bak,*.pyc,*.class,*.pyc,*.pyo
let g:netrw_list_hide= '.*\.pyc$,.*\.pyo$,*\.swp$,tags'

" undo
set undodir=~/.vim/tmp
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" detect puppet filetype
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile *.pp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab textwidth=80 smarttab

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle "marcweber/vim-addon-mw-utils"
Bundle "osyo-manga/vim-brightest"
Bundle "chase/vim-ansible-yaml"
Bundle "itchyny/lightline.vim"
Bundle "derekwyatt/vim-scala"
Bundle "scrooloose/nerdtree"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "majutsushi/tagbar"
Bundle "gmarik/Vundle.vim"
Bundle "rodjek/vim-puppet"
Bundle "tpope/vim-fugitive"
Bundle "SirVer/ultisnips"
Bundle "tomtom/tlib_vim"
Bundle "kien/ctrlp.vim"
Bundle "fatih/vim-go"

call vundle#end()
filetype plugin indent on

set backupdir=~/.vim/tmp
set dir=~/.vim/tmp

set laststatus=2
set statusline=%n:%<%f\ %h%m%r\ %=%-10.(%l,%c%V%)\ %4L\ %P
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

set t_Co=256


"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" hit "-" (minus) anytime to open the file explorer to show files adjacent to
" the one I just edit
map - :Explore<cr>


" sudo write
cmap w!! w !sudo tee %
set pastetoggle=<F9>

nmap <F7> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

let mapleader = ","
let g:mapleader = ","

colorscheme molokai
