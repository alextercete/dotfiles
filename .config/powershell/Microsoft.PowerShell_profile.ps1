function gs { git status --short $args }
function gd { git diff $args }
function gds { git diff --staged $args }
function gg { git graph $args }
function dotfiles { git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args }

Import-Module posh-git
Import-Module z
oh-my-posh init pwsh --config "$HOME/.tercete.omp.json" | Invoke-Expression
