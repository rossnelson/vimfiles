local colors = require('config.colors')

local theme = {
  accent = { fg = colors.fg, bg = colors.bg },
  inactive = { fg = colors.inactive, bg = colors.bg },
  current = { fg = colors.fg, bg = colors.bg },
  not_current = { fg = colors.inactive, bg = colors.bg },
  fill = { bg = colors.bg, fg = colors.red },
}

return {
  'nanozuki/tabby.nvim',

  dependencies = 'nvim-tree/nvim-web-devicons',

  init = function()
    require("tabby").setup({
      line = function(line)
        return {
          { '', hl = theme.accent },
          { ' 󰚌', hl = theme.fill },

          line.sep('', theme.fill, theme.current),

          line.tabs().foreach(function(tab)
            local hl = tab.is_current() and theme.current or theme.not_current

            return {
              line.sep(' ', hl, theme.fill),

              {
                tab.is_current() and '' or '󰆣',
                tab.number(),
                tab.name(),

                margin = ' ',
              },

              hl = hl,
              margin = ' ',
            }
          end),

          line.spacer(),

          line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
            return {
              line.sep(' ', theme.fill, theme.current),

              win.is_current() and '' or '',
              win.buf_name(),

              hl = theme.current,
              margin = ' ',
            }
          end),

          { '  ', hl = theme.fill },
          { '', hl = theme.accent },

          hl = theme.fill,
        }
      end,

      option = {
        nerdfont = true,
      }
    })
  end
}
