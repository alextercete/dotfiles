#!/bin/bash

export EDITOR='vim'

# Use Vim mappings
set -o vi

# Map Ctrl+l to clear screen in Vim insert mode
bind -m vi-insert "\C-l":clear-screen

