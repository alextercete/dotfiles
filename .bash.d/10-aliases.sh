#!/bin/bash

# Default aliases
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gg='git graph'
alias npm='npm -s'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Custom (usually OS-specific) aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

