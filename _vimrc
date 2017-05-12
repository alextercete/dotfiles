" Replace `vimfiles/` with `.vim/`
set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after

" Prevent Git Bash/Cygwin from setting their own shells
set shell=cmd
set shellcmdflag=/c

set nobackup

source $HOME\.vimrc
