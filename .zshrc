export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.zsh"
ZSH_THEME="tercete"
plugins=(nvm z wsl kube kubectl ssh aws vi-mode)
source "$ZSH/oh-my-zsh.sh"

# Load local binaries
export PATH="$HOME/.local/bin:$PATH"

# Use Vim as the default editor
export EDITOR=vim
export VISUAL=vim

# Customize `ls` colours
export LS_COLORS="di=1;34:ln=1;36:so=0;35:pi=0;33:ex=1;32:bd=0;33;01:cd=0;33;01:su=0;37:sg=0;30;43:tw=0;42:ow=0;43:st=0;44:*.tar=1;31:*.zip=1;31:*.rar=1;31"

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
