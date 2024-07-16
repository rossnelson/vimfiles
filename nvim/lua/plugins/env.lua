return {
  'tpope/vim-dotenv',
  lazy = false,
  init = function()
    -- run this everytime the plugin starts
    vim.cmd [[
      autocmd VimEnter * if exists(':Dotenv') | exe 'Dotenv! .env' | endif
    ]]
  end,
}

