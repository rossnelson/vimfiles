if has("gui_running")
  set fuoptions=maxhorz,maxvert

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " Command-Shift-F for Ack
  map <D-F> :Ack<space>

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv

  " Adjust viewports to the same size
  map <Leader>= <C-w>=
  imap <Leader>= <Esc> <C-w>=

  " associate *.jst.ejs with haml filetype
  au BufRead,BufNewFile *.jst.ejs setfiletype haml
  au BufRead,BufNewFile *.install setfiletype php

endif

" Don't beep
set visualbell

" Start without the toolbar
set guioptions-=r
set guioptions-=T
set go-=L
set guifont=Inconsolata-dz:h12
set transparency=0 
set guioptions=aAce

set spell


