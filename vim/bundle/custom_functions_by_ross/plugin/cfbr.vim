"
" START html.tidy
:vmap <Leader>ti :!tidy -q -i --show-errors 0<CR>

function! MyStories()
  :!use_pt-rp report my_stories
endfunction
:command! -bang -range=% -nargs=0 MyStories :call MyStories()
:map <Leader>ms :MyStories<CR>
:vmap <Leader>ms :MyStories<CR>

function! PasteAsCoffee()
  :read !pbpaste | js2coffee
endfunction
:command! PasteAsCoffee :call PasteAsCoffee()

function! PasteAsHaml()
  :read !pbpaste | global_html2haml -e
endfunction
:command! PasteAsHaml :call PasteAsHaml()

function! PasteAsSass()
  :read !pbpaste | global_sass-convert
endfunction
:command! PasteAsSass :call PasteAsSass()

:map <leader>pc :PasteAsCoffee<CR>
:map <leader>ph :PasteAsHaml<CR>
:map <leader>ps :PasteAsSass<CR>

command! -bang -range=% -nargs=0 JsToCoffee :<line1>,<line2>!js2coffee
command! -bang -range=% -nargs=0 HtmlToHaml :<line1>,<line2>!global_html2haml -e
