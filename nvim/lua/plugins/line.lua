return {
  {
    "nvim-lualine/lualine.nvim",
    config = function(opts)
      require('lualine').setup {
        options = {
          theme = 'nord',
          icons_enabled = true,
        },
      }
    end,
  }
}
