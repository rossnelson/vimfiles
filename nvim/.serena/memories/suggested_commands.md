# Suggested Commands for Neovim Configuration Development

## System Commands (Darwin/macOS)
```bash
# Navigation and exploration
ls -la                  # List files with details
find . -name "*.lua"    # Find Lua files
grep -r "pattern" .     # Search for pattern in files
tree -L 2              # Show directory tree (if installed)

# Git operations
git status             # Check git status
git diff               # View changes
git add .              # Stage changes
git commit -m "msg"    # Commit changes
git log --oneline -10  # View recent commits

# File operations
cp source dest         # Copy files
mv old new            # Move/rename files
mkdir -p path/to/dir  # Create directories
touch filename        # Create empty file
```

## Neovim Commands
```vim
" Plugin Management
:Lazy                  " Open plugin manager UI
:Lazy sync            " Sync all plugins
:Lazy update          " Update plugins
:Lazy restore         " Restore plugins from lock file

" LSP and Tools
:Mason                " Open Mason UI
:MasonInstall <tool>  " Install specific tool
:LspInfo             " Show LSP status

" Diagnostics and Debugging
:checkhealth         " Full health check
:messages            " View messages/errors
:Telescope keymaps   " Browse all keymappings
:Trouble            " Open diagnostics list

" File Navigation
:Telescope find_files " Find files
:Telescope live_grep  " Search in files
:Telescope buffers   " Switch buffers

" Development
:source %            " Reload current file
:lua vim.print()     " Print Lua values for debugging
:inspect             " Inspect highlight groups
```

## Testing Changes
```bash
# Start Neovim with minimal config for testing
nvim -u init.lua

# Start Neovim without any config
nvim -u NONE

# Check for Lua syntax errors
nvim --headless -c 'quit'
```

## Useful Paths
- Config root: `~/.config/nvim/` or current directory
- Lazy.nvim plugins: `~/.local/share/nvim/lazy/`
- Mason installations: `~/.local/share/nvim/mason/`