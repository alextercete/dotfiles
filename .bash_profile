#!/bin/bash

# Color `ls` output
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Load Bash completion
if hash brew 2>/dev/null; then
  source "$(brew --prefix)/etc/bash_completion"
fi

# Load ~/.bashrc
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

