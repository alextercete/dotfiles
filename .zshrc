export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.zsh"
ZSH_THEME="tercete"
plugins=(nvm z wsl kube kubectl aws vi-mode)
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
function gr {
  git for-each-ref --sort=-creatordate --sort=-HEAD --format='%(refname)' \
    | sed 's#^refs/remotes/#[remote-branch] #; s#^refs/heads/#[branch] #; s#^refs/tags/#[tag] #;' \
    | fzf --ansi \
    | awk '{sub("origin/", "", $2); print $2}'
}
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
