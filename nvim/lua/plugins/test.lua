return { 
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",

      "nvim-neotest/neotest-jest",
      "fredrikaverpil/neotest-golang",
    },

    keys = {
      -- trigger test runs
      { "<leader>ta", "<cmd>w|lua require('neotest').run.run(vim.loop.cwd())<cr>", desc = "Test All" },
      { "<leader>tf", "<cmd>w|lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "File" },
      { "<leader>tl", "<cmd>w|lua require('neotest').run.run_last()<cr>", desc = "Last" },
      { "<leader>tn", "<cmd>w|lua require('neotest').run.run()<cr>", desc = "Nearest" },

      -- show test status and results
      { "<leader>to", "<cmd>w|lua require('neotest').output.open({ auto_close = true, enter = true })<cr>", desc = "Output" },
      { "<leader>tp", "<cmd>w|lua require('neotest').output_panel.toggle()<cr>", desc = "Toggle Output Panel" },
      { "<leader>ts", "<cmd>w|lua require('neotest').summary.toggle()<cr>", desc = "Summary" },

      -- navigate test results
      { "<leader>tS", "<cmd>w|lua require('neotest').run.stop()<cr>", desc = "Stop" },
    },

    opts = function()
      return {
        adapters = {
          require("neotest-golang")({
            go_test_args = { 
              "-v" ,
              "-race" 
            },
          }),

          require('neotest-jest')({
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          }),
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
    end,
  },
}
