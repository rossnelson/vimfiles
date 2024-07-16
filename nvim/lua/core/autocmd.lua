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
  pattern = 'go',
  command = 'setlocal noexpandtab listchars=tab:  ,trail:.,extends:#,nbsp:.'
})

-- Only for ALE??
-- autocmd('FileType', {
--   pattern = 'typescript',
--   command = 'setlocal formatprg=prettier --parser typescript'
-- })

autocmd('FileType', {
  pattern = 'typescript',
  command = 'setlocal noexpandtab listchars=tab:  ,trail:.,extends:#,nbsp:.'
})
