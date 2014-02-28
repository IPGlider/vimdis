" Load Pathogen
call pathogen#incubate()
call pathogen#helptags()

colorscheme molokai

syntax on
filetype plugin on
filetype indent on

set backspace=2
set history=1000
set wrap

" Create backup and swap files in one place
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" UI elements
set cursorline
set number
set showcmd

" Text formatting
set cindent
set expandtab
set list listchars=tab:›\ ,trail:¬
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Search text
set hlsearch
set ignorecase
set incsearch

" Status line
set laststatus=2
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
