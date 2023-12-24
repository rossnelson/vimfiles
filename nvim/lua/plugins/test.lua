return { 
  {
    "vim-test/vim-test",
    opts = {
      setup = {},
    },
    config = function(plugin, opts)
      vim.g["test#strategy"] = "neovim"
      vim.g["test#neovim#term_position"] = "belowright"
      vim.g["test#neovim#preserve_screen"] = 1

      -- Set up vim-test
      for k, _ in pairs(opts.setup) do
        opts.setup[k](plugin, opts)
      end
    end,
  },

  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-vim-test",
      "vim-test/vim-test",
    },
    keys = {
      { "<leader>ta", "<cmd>w|lua require('neotest').run.run(vim.loop.cwd())<cr>", desc = "Test All" },
      { "<leader>tf", "<cmd>w|lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "File" },
      { "<leader>tl", "<cmd>w|lua require('neotest').run.run_last()<cr>", desc = "Last" },
      { "<leader>tn", "<cmd>w|lua require('neotest').run.run()<cr>", desc = "Nearest" },
      { "<leader>to", "<cmd>w|lua require('neotest').output.open({ enter = true })<cr>", desc = "Output" },
      { "<leader>ts", "<cmd>w|lua require('neotest').run.stop()<cr>", desc = "Stop" },
      { "<leader>tS", "<cmd>w|lua require('neotest').summary.toggle()<cr>", desc = "Summary" },
    },
    opts = function()
      return {
        adapters = {
          require "neotest-vim-test" {
            ignore_file_types = { "python", "vim", "lua" },
          },
        },
        icons = {
          child_indent = "│",
          child_prefix = "├",
          collapsed = "─",
          expanded = "╮",
          failed = "✘",
          final_child_indent = " ",
          final_child_prefix = "╰",
          non_collapsible = "─",
          passed = "✓",
          running = "",
          running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
          skipped = "↓",
          unknown = ""
        },
      }
    end,
    config = function(_, opts)
      local neotest_ns = vim.api.nvim_create_namespace "neotest"
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)

      require("neotest").setup(opts)

      vim.api.nvim_set_hl(0, 'NeotestDir', { fg = "#81a1c1" })
      vim.api.nvim_set_hl(0, 'NeotestFile', { fg = "#8fbcbb" })

      vim.api.nvim_set_hl(0, 'NeotestFailed', { fg = "#aa5a64" })
      vim.api.nvim_set_hl(0, 'NeotestPassed', { fg = "#a3be8c" })
      vim.api.nvim_set_hl(0, 'NeotestNamespace', { fg = "#81a1c1" })
      vim.api.nvim_set_hl(0, 'NeotestAdapterName', { fg = "#81a1c1" })
    end,
  },
}
