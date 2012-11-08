" Load Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set number
set ruler
syntax on

set wrap
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:¬
set cursorline

set backspace=2

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2
set showcmd
set history=1000

filetype on
filetype plugin on
filetype indent on

colorscheme molokai

function! StripTrailingWhitespaces()
  normal msHmtgg

  %s/\s\+$//e

  normal 'tzt`s
endfunction

function! FixIndent()
  normal msHmtgg

  normal gg=G

  normal 'tzt`s
endfunction

let mapleader = ","

map <Leader>n :NERDTreeToggle<CR>
map <Leader>s :call StripTrailingWhitespaces()<CR>
map <Leader>i :call FixIndent()<CR>
map <Leader>t :TagbarToggle<CR>

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
