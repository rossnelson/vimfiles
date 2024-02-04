return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme tokyonight]])

      local config = require("config.theme")

      require("tokyonight").setup({
        on_highlights = config.on_highlights,
      })
    end,
  }
}
