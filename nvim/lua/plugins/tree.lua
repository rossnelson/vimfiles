return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function(config)
      require'nvim-web-devicons'.setup(config)
    end,
  },

  {
    'stevearc/oil.nvim',
    opts = {
      columns = {
        "icon",
      },
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-x>"] = "actions.select_vsplit",
        ["<C-v>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
        ["g\\"] = "actions.toggle_trash",
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  }

  --
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v3.x",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  --     "MunifTanjim/nui.nvim",
  --     -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  --   },
  --   config = function (opts)
  --     local config = require "config.tree"
  --     require("neo-tree").setup(config)
  --
  --     local map = vim.api.nvim_set_keymap
  --     local opts = { noremap = true, silent = true }
  --
  --     map("n", "-", ":Neotree filesystem reveal float<CR>", opts)
  --
  --     -- --
  --     -- Dont Need these anymore
  --     -- --
  --     -- map("n", "<leader>v", ":vsplit | Neotree<CR>", opts)
  --     -- map("n", "<leader>s", ":split | Neotree<CR>", opts)
  --
  --     -- -- 
  --     -- Cant get this to work, not sure why
  --     -- https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/lua/neo-tree/ui/highlights.lua#L23
  --     -- --
  --     --
  --     -- vim.api.nvim_set_hl(0, 'NormalFloat', { guibg = "#1e222a" })
  --     -- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = "#aa5a64", fg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = "#aa5a64", fg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = "#aa5a64", fg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = "#aa5a64", fg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeFloatNormal', { bg = "#aa5a64", fg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = "#aa5a64", fg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { guifg = "#aa5a64" })
  --     -- vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { guifg = "#aa5a64" })
  --
  --   end,
  -- },
}
