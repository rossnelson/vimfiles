" Silly rabbit arrow keys are for kids
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :Explore 
map <Leader>ep :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :Sexplore 
map <Leader>v :Vexplore 
map <Leader>nt :tabe <C-R>=expand("%:p:h") . '/'<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
