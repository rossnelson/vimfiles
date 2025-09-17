# Development Commands and Workflow

## Formatting
- **Auto-format on save**: Configured via conform.nvim
- **Formatters by filetype**:
  - Lua: stylua
  - JavaScript/TypeScript: eslint_d, prettier
  - Go: gofmt, goimports
  - Ruby: standardrb
  - Terraform: terraform_fmt
  - CSS/HTML/JSON/Markdown: prettier
  - YAML: prettier, actionlint

## Linting
- Linting is handled via LSP servers installed through Mason
- ESLint for JavaScript/TypeScript (via eslint_d)

## Testing
- Neotest framework configured with adapters:
  - neotest-golang for Go tests
  - neotest-vitest for JavaScript/TypeScript
  - neotest-python for Python

## LSP and Tools Management
- Mason.nvim manages LSP servers, formatters, linters, and DAP adapters
- Tools are automatically installed on startup
- Access Mason UI with `:Mason` command

## Git Integration
- Gitsigns for inline git status
- Lazygit integration for full git UI (if lazygit is installed)
- Git commands available through standard vim fugitive-style mappings

## Key Development Commands
- `:Lazy` - Plugin manager UI
- `:Mason` - LSP/tool installer UI
- `:Telescope` - Fuzzy finder
- `:Trouble` - Diagnostics list
- Format happens automatically on save
- LSP actions available through standard keymaps

## File Navigation
- Telescope for fuzzy finding
- Arrow.nvim for quick file switching
- Standard netrw or file tree navigation