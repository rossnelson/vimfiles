return {
  "nvim-treesitter/nvim-treesitter",
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  build = ":TSUpdate",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "csv",
      "diff",
      "dockerfile",
      "html",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "query",
      "regex",
      "scss",
      "sql",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
  },

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,

  init = function()
    require("util.lazy-load")("nvim-treesitter")
  end

}
