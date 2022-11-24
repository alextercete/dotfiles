export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.zsh"
ZSH_THEME="tercete"
plugins=(git nvm z wsl kube vi-mode ssh-agent gpg-agent)
source "$ZSH/oh-my-zsh.sh"

# Load local binaries
export PATH="$HOME/.local/bin:$PATH"

# Use Vim as the default editor
export EDITOR=vim
export VISUAL=vim

# Customize `ls` colours
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Set aliases
alias gs="git status --short"
alias gd="git diff"
alias gds="git diff --staged"
alias gg="git graph"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
