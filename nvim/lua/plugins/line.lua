return {
  {
    "nvim-lualine/lualine.nvim",
    config = function(opts)
      local config = require("config.line")
      config.custom()
    end,
  }
}
