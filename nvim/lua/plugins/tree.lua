return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function(config)
      require'nvim-web-devicons'.setup(config)
    end,
  },


  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function (opts)
      local config = require "config.tree"
      require("neo-tree").setup(config)

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map("n", "-", ":Neotree filesystem reveal float<CR>", opts)
      map("n", "<leader>v", ":vsplit | Neotree<CR>", opts)
      map("n", "<leader>s", ":split | Neotree<CR>", opts)

      -- -- 
      -- Cant get this to work, not sure why
      -- https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/lua/neo-tree/ui/highlights.lua#L23
      -- --
      --
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { guibg = "#1e222a" })
      -- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = "#aa5a64", fg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = "#aa5a64", fg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = "#aa5a64", fg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = "#aa5a64", fg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeFloatNormal', { bg = "#aa5a64", fg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = "#aa5a64", fg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { guifg = "#aa5a64" })
      -- vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { guifg = "#aa5a64" })

    end,
  },
}
