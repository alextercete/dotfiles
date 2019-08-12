#!/bin/bash

# Load Bash completion for Ubuntu if present
if [ -f /usr/share/bash-completion/completions/git ]; then
  source /usr/share/bash-completion/completions/git
fi

# Load Bash completion from Homebrew if present
if hash brew 2>/dev/null; then
  source "$(brew --prefix)/etc/bash_completion"
fi
