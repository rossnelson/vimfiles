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
    end,
  },
}
