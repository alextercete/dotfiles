#!/bin/bash

# <username> <path/to/folder> (<branch>) $
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[0;36m\]\w\[\e[m\]\[\e[1;36m\]$(__git_ps1)\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
