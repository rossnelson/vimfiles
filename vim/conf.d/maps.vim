
nmap <silent> <Leader>! :nohlsearch<CR>
map <Leader>= mzgg=G`z

nmap <Leader>] :tabNext<CR>
nmap <Leader>] :tabprevious<CR>
nmap <Leader>nt :tabedit %<CR>

nmap <Leader>sv :source $MYVIMRC<CR>
nmap <Leader>ev :e $MYVIMRC<CR>

nmap <Leader>= G=gg

nmap <Leader>bu :set buftype: " "
vmap <Leader>bu :set buftype: " "

" Toggle Commenting
map <Leader>/ gcc

" Command-][ to increase/decrease indentation
vmap <Leader>] >gv
vmap <Leader>[ <gv

map <Leader>sp "+p
vmap <Leader>sy "+y
vmap <Leader>sY "+Y

" Adjust viewports to the same size
map <Leader>== <C-w>=

map <Leader>f :FZF<CR>

" This autocmd changes the window-local current directory to be the same as the
" directory of the current file.
" autocmd BufEnter * silent! lcd %:p:h
