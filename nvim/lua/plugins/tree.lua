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
      skip_confirm_for_simple_edits = true,
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

    config = function()
      require("oil").setup()

      vim.keymap.set("n", "<leader>v", function()
        vim.cmd("vsplit | wincmd l")
        require("oil").open()
      end)

      vim.keymap.set("n", "<leader>s", function()
        vim.cmd("split | wincmd j")
        require("oil").open()
      end)
    end,
  }
}
