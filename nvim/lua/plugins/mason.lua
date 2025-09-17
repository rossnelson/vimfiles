return {
  "williamboman/mason.nvim",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function(opts)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- import config
    local config = require "config.mason"

    -- import mason
    local mason = require "mason"

    -- import mason-lspconfig
    local mason_lspconfig = require "mason-lspconfig"

    local mason_tool_installer = require "mason-tool-installer"

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = config.lsp_servers,
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_lspconfig.setup_handlers {
      function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          on_attach = config.on_attach,
        }
      end,

      -- custom handler for specific server
      ["golangci_lint_ls"] = function ()
        require("lspconfig").golangci_lint_ls.setup {
          root_dir = require("lspconfig").util.root_pattern("go.mod"),
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          on_attach = config.on_attach,
        }
      end,

      ["yamlls"] = function()
        require("lspconfig").yamlls.setup {
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          on_attach = config.on_attach,
          -- Exclude helm filetype from yamlls
          filetypes = { "yaml", "yml" }, -- Note: NOT including "helm"
          on_new_config = function(config, root_dir)
            -- Disable yamlls if we're in a Helm chart directory
            if root_dir and vim.fn.filereadable(root_dir .. '/Chart.yaml') == 1 then
              config.settings = {
                yaml = {
                  validate = false,
                  schemas = {}
                }
              }
            end
          end,
          autostart = function()
            -- Don't autostart for helm files
            if vim.bo.filetype == 'helm' then
              return false
            end
            -- Don't autostart if we're in a Helm templates directory
            local filepath = vim.fn.expand('%:p')
            if filepath:match('/templates/') then
              return false
            end
            return true
          end,
        }
      end,
    }

    mason_tool_installer.setup({ ensure_installed = config.tools })
  end,
}
