nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#vim#term_position = "belowright"
let test#strategy = "vimterminal"
" let test#javascript#jest#executable = 'yarn test'
" let test#ruby#rspec#executable = 'bundle exec rspec'
