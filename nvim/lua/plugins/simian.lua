return {
  'simiancreative/dotenv.nvim',
  init = function()
    vim.cmd [[
      autocmd VimEnter * if exists(':SimianDotENV') | exe 'SimianDotENV' | endif
    ]]
  end,
}
