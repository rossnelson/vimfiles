set nocompatible " causes vim to act less like vi
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=500 " keep 500 lines of command line history

set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set autoindent " indent next line
set showmatch " Attempts to show matching (), {}, or []
set nowrap

set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files

set autoread " Update files when saved elsewhere
set wmh=0 " This sets the minimum window height to 0, so you can stack many 
          " more files before things get crowded. Vim will only display the filename.
set viminfo+=! " store uppercase registers in viminfo 

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set tabstop=2 " Set tabs to 2 spaces
set autowriteall " Auto save on close
set spell
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

set et " expand tab
set sw=2 " shift width < >
set smarttab " deltes of adds a tab
set tw=80 " auto break lines at 80 columns
set colorcolumn=80
set incsearch " show search matches as you type
set ignorecase smartcase " when searching ignore case when the pattern contains
                         " lowercase letters only.
set laststatus=2  " show status line. never=0 only when split=1 always=2
set number " show line numbers
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set auto indenting on

set pastetoggle=<F2> " Don't auto indent pasted text after F2
set nofoldenable " Say no to code folding...

if has("gui_running")
  set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
endif
