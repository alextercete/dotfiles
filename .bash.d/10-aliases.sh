#!/bin/bash

get_operating_system() {
    case "$OSTYPE" in
        darwin*)
            echo 'unix' ;;
        msys*)
            echo 'windows' ;;
    esac
}

# Default aliases
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gg='git graph'
alias npm='npm -s'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# OS-specific aliases
os=$(get_operating_system)
if [ -f ~/.bash_aliases.$os ]; then
  . ~/.bash_aliases.$os
fi
