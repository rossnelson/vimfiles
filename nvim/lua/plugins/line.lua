return {
  {
    "nvim-lualine/lualine.nvim",
    config = function(opts)
      opts.theme = "nord"

      require('lualine').setup(opts)
    end,
  }
}
