# Code Style and Conventions

## Lua Code Style
- **Indentation**: 2 spaces
- **Quotes**: Double quotes preferred for strings
- **File Structure**: Return a table/plugin spec from plugin files
- **Plugin Declaration Pattern**: Use lazy.nvim spec format with tables

## Plugin Configuration Patterns
1. **Simple plugins**: Return a string (plugin name)
2. **Configured plugins**: Return a table with plugin spec:
   ```lua
   return {
     "plugin/name",
     lazy = true,
     event = { "BufReadPre", "BufNewFile" },
     opts = { ... },
     config = function() ... end,
   }
   ```
3. **Multiple plugins**: Return array of plugin specs

## Naming Conventions
- **Files**: lowercase with underscores (e.g., `lazy_load.lua`)
- **Plugin files**: descriptive names matching functionality (e.g., `formatter.lua`, `treesitter.lua`)
- **Variables**: snake_case for local variables
- **Functions**: snake_case

## Module Loading
- Use `require` for loading modules
- Core modules loaded via pattern matching in `lua/core/init.lua`
- Plugins loaded via lazy.nvim from `lua/plugins/` directory

## Configuration Approach
- Modular configuration split by concern
- Plugin-specific configs either inline or in separate config files
- Lazy loading where appropriate for performance