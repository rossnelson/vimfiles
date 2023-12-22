
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
" if &t_Co > 2 || has("gui_running")
"   syntax on
"   set hlsearch
" endif

" set background=dark
" let g:solarized_termtrans = 1

" if !has("gui_running")
"   let g:solarized_termtrans=1
"   let g:solarized_termcolors=256
" endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

colorscheme nord

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'gitbranch', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
