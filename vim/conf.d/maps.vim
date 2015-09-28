
nmap <silent> <Leader>! :nohlsearch<CR>

nmap <Leader>] :tabNext<CR>
nmap <Leader>] :tabprevious<CR>
nmap <Leader>nt :tabedit %<CR>

nmap <Leader>sv :source $MYVIMRC<CR>
nmap <Leader>ev :e $MYVIMRC<CR>

nmap <Leader>= G=gg

nmap <Leader>bu :set buftype: " "
vmap <Leader>bu :set buftype: " "

" Rspec runners
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>k :call RunAllSpecs()<CR>

" Toggle Commenting
map <Leader>/ <plug>NERDCommenterToggle<CR>
imap <Leader>/ <Esc><plug>NERDCommenterToggle<CR>i

" Command-][ to increase/decrease indentation
vmap <Leader>] >gv
vmap <Leader>[ <gv

" Adjust viewports to the same size
map <Leader>= <C-w>=
imap <Leader>= <Esc> <C-w>=

let g:netrw_localrmdir="rm -r"

" vertical preview splits, then when the cursor is over the desired file, 
" type `p` to open a preview window. To close the window, type Ctrl-W z
let g:netrw_preview = 1

" This autocmd changes the window-local current directory to be the same as the 
" directory of the current file.
" autocmd BufEnter * silent! lcd %:p:h
