"
" START html.tidy
:vmap <Leader>ti :!tidy -q -i --show-errors 0<CR>

function! PasteAsCoffee()
  :read !pbpaste | js2coffee
endfunction
:command! PasteAsCoffee :call PasteAsCoffee()
:map <leader>pc :PasteAsCoffee<CR>

function! PasteAsHaml()
  :read !pbpaste | global_html2haml
endfunction
:command! PasteAsHaml :call PasteAsHaml()
:map <leader>ph :PasteAsHaml<CR>

command! -bang -range=% -nargs=0 OpenInMarked :!open -a Marked\ 2.app '%:p'
command! -bang -range=% -nargs=0 JsToCoffee :<line1>,<line2>!js2coffee
command! -bang -range=% -nargs=0 HtmlToHaml :<line1>,<line2>!global_html2haml

