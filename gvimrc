if has("gui_macvim")
  set guioptions-=r
  set guioptions-=l
  set guioptions-=R
  set guioptions-=L
  set guioptions-=T
endif

set columns=80
set lines=48

if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
