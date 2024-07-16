return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dotenv', lazy = false },
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
  },
  init = function()
    -- hide some schemas
    vim.g.db_ui_hide_schemas = { 
      '^_.*', 'pg_catalog', 'pg_toast', 'pg_toast_temp.*', 'information_schema'
    }

    -- Use nvim-notify to show messages.
    vim.g.db_ui_use_nvim_notify = 1

    -- Use Nerd Fonts for icons.
    vim.g.db_ui_use_nerd_fonts = 1

    -- setup mappings
    vim.api.nvim_set_keymap('n', '<leader>du', ':tab DBUI<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>dt', ':DBUIToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>dua', ':DBUIAddConnection<CR>', { noremap = true, silent = true })
  end,
}
