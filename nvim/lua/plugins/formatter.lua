return {
  { 
    'echasnovski/mini.indentscope', 
    version = false,
    config = function()
      require('mini.indentscope').setup({
        symbol = '|',
      })
    end
  },

  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
    opts = {

      -- eslint_d is required for javascript and typescript auto fixing
      -- and import sorting it is installed using mason

      formatters_by_ft = {
        javascript = { "eslint_d", "prettier" },
        typescript = { "eslint_d", "prettier" },
        javascriptreact = { "eslint_d", "prettier" },
        typescriptreact = { "eslint_d", "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier", "actionlint" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        -- cant use this with parameterized sql. so its no bueno
        -- sql = { "sqlfluff" },
        go = { "gofmt", "goimports" },
        terraform = { "terraform_fmt" },
        ruby = { "standardrb" },
      },

      format_after_save = {
        lsp_fallback = true,
        async = true,
        timeout_ms = 5000,
      },

      formatters = {
        -- rubocop = {
        --   meta = {
        --     url = "https://github.com/rubocop/rubocop",
        --     description = "Ruby static code analyzer and formatter, based on the community Ruby style guide.",
        --   },
        --   command = "rubocop",
        --   args = { 
        --     "--server",
        --     "-a",
        --     "-f",
        --     "quiet",
        --     "--stderr",
        --     "--stdin",
        --     "$FILENAME",
        --   },
        --   exit_codes = { 0, 1 },
        -- },
        -- sqlfluff = {
        --   args = { 
        --     "fix", 
        --     "--dialect=postgres", 
        --     "-" 
        --   },
        --   stdin = true,
        -- },

        -- gci = {
        --   args = { 
        --     "write",
        --     "--skip-generated",
        --     "--skip-vendor",
        --     "-s", "blank",
        --     "-s", "dot",
        --     "-s", "standard", 
        --     "-s", "prefix(common)",
        --     "-s", "default", 
        --     "-s", "alias", 
        --     "-s", "localmodule", 
        --     "--custom-order",
        --     "$FILENAME",
        --   },
        --   stdin = false,
        -- },
      },

    },
  }
}
