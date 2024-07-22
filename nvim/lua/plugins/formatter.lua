return {
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
        go = { "gofumpt", "gci", "goimports", "golines" },
        terraform = { "terraform_fmt" },
      },

      format_on_save = {
        lsp_fallback = true,
        async = true,
        timeout_ms = 5000,
      },

      formatters = {
        -- sqlfluff = {
        --   args = { 
        --     "fix", 
        --     "--dialect=postgres", 
        --     "-" 
        --   },
        --   stdin = true,
        -- },

        gci = {
          args = { 
            "write",
            "--skip-generated",
            "--skip-vendor",
            "-s", "blank",
            "-s", "dot",
            "-s", "standard", 
            "-s", "default", 
            "-s", "alias", 
            "-s", "localmodule", 
            "--custom-order",
            "$FILENAME",
          },
          stdin = false,
        },
      },

    },
  }
}
