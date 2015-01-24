"
" START html.tidy
:vmap <Leader>ti :!tidy -q -i --show-errors 0<CR>

" START rspec.vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>
" END rspec.vim

function! PasteAsCoffee()
  :read !pbpaste | js2coffee
endfunction
:command! PasteAsCoffee :call PasteAsCoffee()
:map <leader>pc :PasteAsCoffee<CR>

function! PasteAsHaml()
  :read !pbpaste | html2haml
endfunction
:command! PasteAsHaml :call PasteAsHaml()
:map <leader>ph :PasteAsHaml<CR>

"command! -bang -range=% -nargs=0 OpenInMarked :!open -a ~/Downloads/Marked\2.app/ '%:p'
command! -bang -range=% -nargs=0 JsToCoffee :<line1>,<line2>!js2coffee
command! -bang -range=% -nargs=0 HtmlToHaml :<line1>,<line2>!html2haml

