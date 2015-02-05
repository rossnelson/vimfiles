
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set background=dark
let g:solarized_termtrans = 1

if !has("gui_running")
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
endif

colorscheme solarized
