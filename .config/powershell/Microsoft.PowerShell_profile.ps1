function gs { git status --short $args }
function gd { git diff $args }
function gds { git diff --staged $args }
function gg { git graph $args }
function gr {
  git for-each-ref --sort=-creatordate --sort=-HEAD --format='%(refname)' `
    | sed 's#^refs/remotes/#[remote-branch] #; s#^refs/heads/#[branch] #; s#^refs/tags/#[tag] #;' `
    | fzf --ansi `
    | awk '{sub("origin/", "", $2); print $2}'
}
function dotfiles { git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args }

Import-Module posh-git
Import-Module z
oh-my-posh init pwsh --config "$HOME/.tercete.omp.json" | Invoke-Expression
