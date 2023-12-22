" Asynchronous Lint Engine (ALE)

" Limit linters used for JavaScript
let g:ale_linters = {
\  'python': ['flake8'],
\  'sass': ['prettier'],
\  'css': ['prettier'],
\  'scss': ['prettier'],
\  'html': ['prettier'],
\  'javascript': ['prettier', 'eslint'],
\  'javascriptreact': ['prettier', 'eslint'],
\  'json': ['prettier', 'eslint'],
\  'typescript': ['typescript', 'tsserver', 'eslint', 'prettier'],
\  'typescriptreact': ['typescript', 'tsserver', 'eslint', 'prettier'],
\  'go': ['golangci-lint', 'go vet', 'gopls'],
\  'sql': ['pgformatter'],
\  'ruby': ['rubocop'],
\  'terraform': ['tflint'],
\}

" Limit fixers used
let g:ale_fixers = {
\  'python': ['autopep8'],
\  'sass': ['prettier'],
\  'css': ['prettier'],
\  'scss': ['prettier'],
\  'html': ['prettier'],
\  'javascript': ['prettier', 'eslint', 'importjs'],
\  'typescript': ['prettier', 'eslint', 'importjs'],
\  'javascriptreact': ['prettier', 'eslint', 'importjs'],
\  'typescriptreact': ['prettier', 'eslint', 'importjs'],
\  'json': ['fixjson'],
\  'go': ['goimports', 'gofmt', 'golines', 'gopls', 'remove_trailing_lines', 'trim_whitespace'],
\  'ruby': ['rubocop'],
\  'terraform': ['terraform'],
\}
" \  'sql': ['pgformatter'],
"
let g:ale_fix_on_save = 1 " Fix files on save

highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✘ %d', '⚠ %d', '']
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_standardrb_executable = 'bundle'

" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'

let g:ale_completion_enabled = 1
let g:ale_sql_pgformatter_options = '-B -w 80 -g -e -s 2'

" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
