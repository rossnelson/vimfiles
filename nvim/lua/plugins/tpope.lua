local function open_browser(url)
  local command = string.format("open '%s'", url)
  os.execute(command)
end

return {
  "tpope/vim-fugitive",
  {
    'tpope/vim-dotenv',
    lazy = false,
    init = function()
      -- run this everytime the plugin starts
      vim.cmd [[
      autocmd VimEnter * if exists(':Dotenv') | exe 'Dotenv! .env' | endif
      ]]
    end,
  },
  {
    "tpope/vim-rhubarb",
    config = function()
      vim.api.nvim_create_user_command(
        'Browse',
        function(input)
          open_browser(input.args)
        end,
        { nargs = 1 }
      )

      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>gl", ":GBrowse<cr>", { desc = "Open file in github" })
      keymap.set("v", "<leader>gl", ":GBrowse<cr>", { desc = "Open selection in github" })
    end
  },
  "tpope/vim-surround",
  "tpope/vim-vinegar",
  "tpope/vim-sensible",
  "tpope/vim-abolish",
}

