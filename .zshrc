export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git autojump vi-mode ssh-agent)
source "$ZSH/oh-my-zsh.sh"

# Load local binaries
export PATH="$HOME/.local/bin:$PATH"

# Customize `ls` colours
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Set aliases
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias gg="git graph"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
