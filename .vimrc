" Load default settings
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

""" APPEARANCE
set title
set number
set nowrap
set colorcolumn=120

colorscheme dim

""" TEXT EDITING
set encoding=utf-8

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set showmatch

" Yank to and paste from system clipboard
if has("clipboard")
  set clipboard^=unnamed,unnamedplus
endif

""" SEARCHING
set hlsearch
set ignorecase smartcase

" Mute search highlighting with <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

""" FILE MANAGEMENT
set hidden

" Git: Enable syntax highligthing for included .gitconfig files
autocmd BufRead,BufNewFile .gitconfig.* setfiletype gitconfig
