PROMPT='%{$fg[green]%}%T %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)$(kube_prompt_info)'$'\n''%{$fg_bold[green]%}$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_KUBE_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_KUBE_PROMPT_SUFFIX=")%{$reset_color%} "
