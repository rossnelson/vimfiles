local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Toggle Commenting

map( "n", "<Leader>!", ":nohlsearch<CR>" )

map( "", "<Leader>=", "G=gg" )

map( "n", "<Leader>!", ":nohlsearch<CR>" )

map( "n", "<Leader>]", ":tabNext<CR>" )
map( "n", "<Leader>[", ":tabprevious<CR>" )
map( "n", "<Leader>nt", ":tabedit %<CR>" )

-- " source and edit vimrc
map( "n", "<Leader>sv", ":source $MYVIMRC<CR>" )
map( "n", "<Leader>ev", ":e $MYVIMRC<CR>" )


-- " Toggle between buffers
map( "n", "<Leader>bu", ":set buftype: \" \" " )
map( "v", "<Leader>bu", ":set buftype: \" \" " )

-- " Command-][ to increase/decrease indentation
map( "v", "<Leader>]", ">gv" )
map( "v", "<Leader>[", "<gv" )

-- " Yank to clipboard
map( "n", "<Leader>sp", '"+p' )
map( "v", "<Leader>sy", '"+y' )
map( "v", "<Leader>sY", '"+Y' )

-- " Yank current file path and line number to clipboard
map( "n", "<Leader>yp", ":let @+=expand(\"%\") . ':' . line(\".\")<CR>" )
-- " Yank current file path and range of line numbers to clipboard
map( "v", "<Leader>yP", ":<C-u>let @+=expand(\"%\") . ':' . line(\"'<\") . '-' . line(\"'>\") <CR>" )


-- " Adjust viewports to the same size
map( "n", "<Leader>==", "<C-w>=" )


map('n', '<Up>', '<nop>', {noremap = true})
map('n', '<Down>', '<nop>', {noremap = true})
map('n', '<Left>', '<nop>', {noremap = true})
map('n', '<Right>', '<nop>', {noremap = true})

-- " Edit another file in the same directory as the current file
-- " uses expression to extract path from current file's path
map( "n", "<Leader>e", ":Explore" )
map( "n", "<Leader>ep", ":e <C-R>=expand('%:p:h') . '/'<CR>" )


-- map( "n", "<Leader>s", ":Sexplore<CR>" )
-- map( "n", "<Leader>v", ":Vexplore<CR>" )
map( "n", "<Leader>nt", ":tabe <C-R>=expand('%:p:h') . '/'<CR>" )

-- " Easy window navigation
map( "n", "<C-h>", "<C-w>h" )
map( "n", "<C-j>", "<C-w>j" )
map( "n", "<C-k>", "<C-w>k" )
map( "n", "<C-l>", "<C-w>l" )

-- " Easy Tab Navigation
map( "n", "<C-t>", ":tabnew<CR>" )
map( "n", "<Leader><Tab>", ":tabnext<CR>" )
map( "n", "<Leader><S-Tab>", ":tabprevious<CR>" )

map( "n", "Y", "yy" )
