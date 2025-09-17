-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- filetype plugin on " Enable loading of filetype plugins
-- syntax on                 " Enable syntax highlighting
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup

local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

autocmd('FileType', {
  pattern = 'typescript',
  command = 'setlocal listchars=tab:  ,trail:.,extends:#,nbsp:.'
})

autocmd('FileType', {
  pattern = 'svelte',
  command = 'setlocal noexpandtab listchars=tab:  ,trail:.,extends:#,nbsp:.'
})

autocmd('FileType', {
  pattern = 'make',
  command = 'setlocal noexpandtab listchars=tab:  ,trail:.,extends:#,nbsp:.'
})

autocmd('FileType', {
  pattern = 'go',
  command = 'setlocal noexpandtab listchars=tab:  ,trail:.,extends:#,nbsp:.'
})

vim.filetype.add({ extension = { mdx = 'mdx' } })

-- Helm template detection
autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*/templates/*.yaml', '*/templates/*.yml', '*/templates/*.tpl' },
  callback = function()
    vim.bo.filetype = 'helm'
  end,
})

-- Register helm filetype to use yaml treesitter parser with helm additions
autocmd('FileType', {
  pattern = 'helm',
  callback = function()
    vim.treesitter.language.register('helm', 'helm')
  end,
})
