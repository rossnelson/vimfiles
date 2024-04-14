return {
  { 
    "mistricky/codesnap.nvim", 
    build = "make",
    config = function()
      require("codesnap").setup({
        watermark = "",
        mac_window_bar = false,
        code_font_family = "InconsolataGo Nerd Font Mono",
        watermark_font_family = "InconsolataGo Nerd Font Mono",
        watermark = "simian creative",
        bg_theme = "bamboo",
        breadcrumbs_separator = "/",
        has_breadcrumbs = true,
      })
    end,
    init = function()
      vim.api.nvim_set_keymap('v', "<Leader>cs", ":CodeSnap<enter>", { noremap = true, silent = true })
    end
  },
}

