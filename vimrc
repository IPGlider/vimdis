" Load Pathogen
call pathogen#incubate()
call pathogen#helptags()

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
set list listchars=tab:›\ ,trail:¬
set cursorline

set backspace=2

set hlsearch
set incsearch
set ignorecase
set smartcase

set statusline=
set statusline+=%<
set statusline+=%f
set statusline+=\ %h
set statusline+=%m
set statusline+=%r
set statusline+=%y
set statusline+=[%{&ff}]
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%{fugitive#statusline()}
set statusline+=%=
set statusline+=0x%B
set statusline+=\ L%l:C%c%V
set statusline+=\ %P
set laststatus=2
set showcmd
set history=1000

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

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
