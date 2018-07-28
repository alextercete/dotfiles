" Load default settings
source $VIMRUNTIME/defaults.vim

" Use Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()


"-------------------------------------
" APPEARANCE
"-------------------------------------

set title
set number
set nowrap
set colorcolumn=120

" Match VS Code's theme when running within its integrated terminal
if $TERM_PROGRAM == 'vscode'
  colorscheme default
else
  set background=dark
  let g:gruvbox_invert_selection=0
  colorscheme gruvbox
endif


"-------------------------------------
" TEXT EDITING
"-------------------------------------

set encoding=utf-8

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set showmatch

" Disable arrow keys for moving around
noremap <Up> <NOP>
inoremap <Up> <NOP>
noremap <Down> <NOP>
inoremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Disable quote concealing in JSON files
let g:vim_json_syntax_conceal = 0


"-------------------------------------
" SEARCHING
"-------------------------------------

set hlsearch
set ignorecase smartcase

" Mute search highlighting with <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>


"-------------------------------------
" FILE MANAGEMENT
"-------------------------------------

set hidden

" Git: Always go to the first line when writing a Git commit message
if has("autocmd")
  augroup gitCommitMessage
    autocmd!
    autocmd BufReadPost COMMIT_EDITMSG
      \ exe "normal! gg"
  augroup END
endif
