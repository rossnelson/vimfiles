let mapleader = ","

for f in split(glob('~/.vim/conf.d/*.vim'), '\n')
    exe 'source' f
endfor
