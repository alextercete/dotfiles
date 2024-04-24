" Load default settings
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

""" APPEARANCE
set title
set number
set nowrap
set colorcolumn=120

" Try to match the editor's theme when running within an integrated terminal
if $TERM_PROGRAM == 'vscode' || $TERMINAL_EMULATOR == 'JetBrains-JediTerm'
  colorscheme default
else
  set termguicolors
  set background=dark
  colorscheme retrobox
endif

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

" Git: Always go to the first line when writing a Git commit message
if has("autocmd")
  augroup gitCommitMessage
    autocmd!
    autocmd BufReadPost COMMIT_EDITMSG
      \ exe "normal! gg"
  augroup END
endif

" Git: Enable syntax highligthing for included .gitconfig files
autocmd BufRead,BufNewFile .gitconfig.* setfiletype gitconfig
