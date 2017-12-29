#!/bin/bash

get_operating_system() {
  case "$OSTYPE" in
    darwin*)
      echo 'macos' ;;
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

# Set up autocomplete for Git aliases
__git_complete gs _git_status
__git_complete gd _git_diff
__git_complete gds _git_diff
__git_complete gg _git_log
__git_complete dotfiles _git

# OS-specific aliases
os=$(get_operating_system)
if [ -f ~/.bash_aliases.$os ]; then
  . ~/.bash_aliases.$os
fi
