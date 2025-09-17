# Task Completion Checklist

When completing a task in this Neovim configuration, ensure:

## Before Committing Changes

1. **Syntax Check**:
   - Open Neovim and ensure no Lua errors on startup
   - Check `:checkhealth` for any issues

2. **Plugin Compatibility**:
   - If adding new plugins, ensure they're compatible with existing ones
   - Update `lazy-lock.json` if needed (`:Lazy sync` or `:Lazy update`)

3. **Configuration Consistency**:
   - Follow existing patterns for plugin declarations
   - Maintain consistent indentation (2 spaces)
   - Use the established file structure

4. **Testing**:
   - Test new keymappings don't conflict with existing ones
   - Verify autocommands work as expected
   - Check that formatters/linters work for relevant filetypes

5. **Documentation**:
   - Add comments only when specifically requested
   - Keep plugin configurations self-documenting through clear naming

## Common Validation Commands
```vim
:checkhealth          " Check Neovim and plugin health
:Lazy sync           " Sync plugins
:Mason               " Check LSP/tool installations
:Telescope keymaps   " Review all keymappings
```

## File Locations to Check
- `lua/core/maps.lua` - for keymapping conflicts
- `lua/plugins/` - for plugin conflicts
- `lua/core/autocmd.lua` - for autocommand interactions
- `lazy-lock.json` - for version pinning