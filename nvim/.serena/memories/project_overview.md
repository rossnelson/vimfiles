# Neovim Configuration Project Overview

## Purpose
This is a personal Neovim configuration project that provides a modern, feature-rich development environment using Lua-based configuration.

## Project Structure
```
nvim/
├── init.lua              # Entry point, sets mapleader and loads core
├── lazy-lock.json        # Plugin version lock file
├── lua/
│   ├── core/            # Core configuration modules
│   │   ├── init.lua     # Core module loader
│   │   ├── settings.lua # Vim settings
│   │   ├── autocmd.lua  # Autocommands
│   │   ├── lazy.lua     # Plugin manager setup (lazy.nvim)
│   │   └── maps.lua     # Keymappings
│   ├── config/          # Plugin-specific configurations
│   │   ├── colors.lua   
│   │   ├── theme.lua
│   │   ├── tree.lua
│   │   ├── line.lua
│   │   └── mason.lua    # LSP/formatter/linter installer
│   ├── plugins/         # Plugin declarations and configs
│   │   └── [various plugin files]
│   └── util/            # Utility functions
│       └── lazy-load.lua
```

## Tech Stack
- **Language**: Lua (Neovim's embedded scripting language)
- **Plugin Manager**: lazy.nvim
- **LSP/Tools Manager**: Mason.nvim
- **Key Plugins**:
  - Treesitter (syntax highlighting & parsing)
  - Telescope (fuzzy finder)
  - LSP configurations via Mason
  - Conform.nvim (formatting)
  - Gitsigns (git integration)
  - CopilotChat & Copilot.vim (AI assistance)
  - Neotest (testing framework)
  - Lualine (statusline)
  - Snacks.nvim (utility collection)

## Leader Key
The leader key is set to comma (,)