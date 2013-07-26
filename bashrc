# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add color to ls
alias ls='ls --color=auto'

# Make sure Vim is the editor
export EDITOR=vim

# Make PS1 fancier
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '

# Use Vim mappings
set -o vi

# Map Ctrl+l to clear screen in Vim insert mode
bind -m vi-insert "\C-l":clear-screen
