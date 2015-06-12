#!/bin/bash

# Make sure `__git_ps1` is available
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
fi

# <username> <path/to/folder> (<branch>) $
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[0;36m\]\w\[\e[m\]\[\e[1;36m\]$(__git_ps1)\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
