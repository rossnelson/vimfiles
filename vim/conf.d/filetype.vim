syntax on                 " Enable syntax highlighting

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs in ruby files
  autocmd FileType ruby,eruby,yaml,haml,coffee set ai sw=2 sts=2 et
  "
  " Only do this part when compiled with support for autocommands.
augroup END

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on " Enable filetype-specific indenting and plugins

endif " has("autocmd")
