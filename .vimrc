" Load default settings
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" Use Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

"-------------------------------------
" General config
"-------------------------------------

set encoding=utf-8              " Enforce UTF-8

set hidden                      " Allow switching between unsaved buffers
set nowrap                      " Turn off line wrap

set title                       " Show filename on the footer
set number                      " Show line numbers
set colorcolumn=120             " Show a guideline at column 120

set showmatch                   " Show tags related to that under the cursor
set hlsearch                    " Highlight search results
set ignorecase smartcase        " Search case-insensitively if search term contains only lowercase letters

set expandtab                   " Convert tabs to spaces
set tabstop=4                   " Tabs are four spaces wide
set shiftwidth=4                " Auto indent tabs are four spaces wide
set softtabstop=4               " <Backspace> goes back four spaces when on an indentation
set autoindent                  " Keep previous line's indentation when creating a new one

""" Display whitespace character nicely
set listchars=tab:›\ ,trail:·,precedes:«,extends:»,eol:↲

"-------------------------------------
" Colors
"-------------------------------------

set background=dark
let g:gruvbox_invert_selection=0
colorscheme gruvbox

"-------------------------------------
" Custom mappings
"-------------------------------------

""" Switch between files with '\\'
nnoremap <Leader><Leader> <C-^>

""" Copy selection to clipboard with '\y'
map <Leader>y "*y

""" Paste from clipboard to a new line with '\p'
nmap <Leader>p :pu *<CR>

""" Use '\l' to toggle whitespace markers
nmap <Leader>l :set list!<CR>

""" Disable arrow keys for moving around
noremap <Up> <NOP>
inoremap <Up> <NOP>
noremap <Down> <NOP>
inoremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

""" <C-l> mutes search highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"-------------------------------------
" Custom autocmds
"-------------------------------------
if has("autocmd")
  augroup gitCommitMessage
    autocmd!
    " Always go to the first line when writing a Git commit message
    autocmd BufReadPost COMMIT_EDITMSG
      \ exe "normal! gg"
  augroup END
endif

"-------------------------------------
" Specific config
"-------------------------------------

""" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|bower_components|build|dist)$',
  \ 'file': '\v\.(exe|dll)$'
  \ }
