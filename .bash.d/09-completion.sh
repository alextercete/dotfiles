#!/bin/bash

# Load Bash completion from Homebrew if present
if hash brew 2>/dev/null; then
  source "$(brew --prefix)/etc/bash_completion"
fi
