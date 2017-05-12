#!/bin/bash

# Color `ls` output
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Load ~/.bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Load Bash completion
if hash brew 2>/dev/null; then
    source $(brew --prefix)/etc/bash_completion
fi
