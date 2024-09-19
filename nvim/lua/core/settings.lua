-- disable mouse
vim.opt.mouse = ""

-- ignore files in tmp and .so files
vim.o.wildignore = vim.o.wildignore .. ",*/tmp/*,*.so,*.swp"

-- don't redraw while executing macros (good performance config)
-- vim.o.lazyredraw = true

-- causes vim to act less like vi
vim.o.compatible = false
-- allow backspacing over everything in insert mode
vim.o.backspace = "indent,eol,start"
-- keep 500 lines of command line history
vim.o.history = 500

-- set ruler " show the cursor position all the time
vim.o.ruler = true

-- display incomplete commands
vim.o.showcmd = true

-- Attempts to show matching (), {}, or []
vim.o.showmatch = true

-- don't wrap lines
vim.o.wrap = false

-- " Don't clutter my dirs up with swp and tmp files
vim.o.backupdir = vim.fn.stdpath("data") .. "/.tmp"
vim.o.directory = vim.fn.stdpath("data") .. "/.tmp"

-- Update files when saved elsewhere
vim.o.autoread = true
-- This sets the minimum window height to 0, so you can stack many
-- more files before things get crowded. Vim will only display the filename.
vim.o.wmh = 0
-- store uppercase registers in viminfo
vim.o.viminfo = vim.o.viminfo .. ",!"

-- " Open new split panes to right and bottom, which feels more natural
vim.o.splitbelow = true
vim.o.splitright = true

--  Set tabs to 2 spaces
vim.o.tabstop = 2
--  Auto save on close
vim.o.autowriteall = true
--  Spellcheck
-- vim.o.spell = true
--  Show whitespace
vim.o.list = true
--  Highlight problematic whitespace
vim.o.listchars = 'tab:>.,trail:.,extends:#,nbsp:.'
--  expand tab
vim.o.expandtab = true
--  shift width < >
vim.o.shiftwidth = 2
--  auto break lines at 80 columns
vim.o.textwidth = 80
--  highlight 80th column
vim.o.colorcolumn = "80"
--  show search matches as you type
vim.o.incsearch = true
--  when searching ignore case when the pattern contains
--  lowercase letters only.
vim.o.ignorecase = true
--  show status line. never=0 only when split=1 always=2
vim.o.laststatus = 2
--  show line numbers
vim.o.number = true
--  assume the /g flag on :s substitutions to replace all matches in a line
vim.o.gdefault = true

-- always set auto indenting on
vim.o.autoindent = true

-- wrap lines without changing the amount of indent
vim.o.breakindent = true


-- Don't auto indent pasted text after F2
-- vim.o.pastetoggle = "<F2>"
-- Say no to code folding...
vim.o.foldenable = false

vim.o.termguicolors = true
vim.o.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.o.signcolumn = "yes" -- show sign column so that text doesn't shift

