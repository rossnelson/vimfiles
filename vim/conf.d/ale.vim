" Asynchronous Lint Engine (ALE)

" Limit linters used for JavaScript
let g:ale_linters = {
\  'python': ['flake8'],
\  'sass': ['prettier'],
\  'scss': ['prettier'],
\  'html': ['prettier'],
\  'javascript': ['prettier', 'eslint'],
\  'json': ['prettier', 'eslint'],
\  'typescript': ['tsserver', 'eslint', 'prettier'],
\  'go': ['gofmt', 'revive', 'go vet', 'gopls'],
\  'sql': ['pgformatter'],
\}

" Limit fixers used
let g:ale_fixers = {
\  'python': ['autopep8'],
\  'sass': ['prettier'],
\  'scss': ['prettier'],
\  'html': ['prettier'],
\  'javascript': ['prettier'],
\  'json': ['prettier'],
\  'typescript': ['prettier'],
\  'go': ['gofmt'],
\}
" \  'sql': ['pgformatter'],
"
let g:ale_fix_on_save = 1

highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['✘ %d', '⚠ %d', '']

" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'

let g:ale_sql_pgformatter_options = '-B -w 80 -g -e -s 2'

" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
