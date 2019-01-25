syntax on                 " Enable syntax highlighting

augroup fmt
  autocmd!
  " let g:prettier#autoformat = 0
  " autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
  let g:neoformat_try_formatprg = 1
  " autocmd BufWritePre *.rb Neoformat
  "autocmd BufWritePre *.js Neoformat
  "autocmd BufWritePre *.json Neoformat
  "autocmd BufWritePre *.jsx Neoformat
augroup END

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs in ruby files
  autocmd FileType ruby,eruby,yaml,haml,coffee set ai sw=2 sts=2 et
  " associate *.jst.ejs with haml filetype
  au BufRead,BufNewFile *.jst.ejs setfiletype haml
  au BufRead,BufNewFile *.install setfiletype php
  au BufRead,BufNewFile *.conf setfiletype nginx
  "
  " Only do this part when compiled with support for autocommands.
augroup END

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on " Enable filetype-specific indenting and plugins
  autocmd filetype crontab setlocal nobackup nowritebackup

endif " has("autocmd")
