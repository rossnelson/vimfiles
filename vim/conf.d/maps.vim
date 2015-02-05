
nmap <silent> <Leader>/ :nohlsearch<CR>

nmap <Leader>sv :source $MYVIMRC<CR>
nmap <Leader>ev :e $MYVIMRC<CR>

nmap <Leader>rf G=gg

nmap <Leader>bu :set buftype: " "
vmap <Leader>bu :set buftype: " "

map <D-/> <Leader>cb

let g:netrw_localrmdir="rm -r"

" vertical preview splits, then when the cursor is over the desired file, 
" type `p` to open a preview window. To close the window, type Ctrl-W z
let g:netrw_preview = 1

" This autocmd changes the window-local current directory to be the same as the 
" directory of the current file.
autocmd BufEnter * silent! lcd %:p:h
