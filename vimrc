
let mapleader = ","

for f in split(glob('~/dotfiles/vim/conf.d/*.vim'), '\n')
    exe 'source' f
endfor
