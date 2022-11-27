PROMPT='%F{green}%T %F{cyan}%~%f $(git_prompt_info)$(aws_prompt_info)$(kube_prompt_info)'$'\n''%B%F{green}$ %b%f'
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{cyan}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%b%f "
ZSH_THEME_AWS_PREFIX="%B%F{cyan}("
ZSH_THEME_AWS_SUFFIX=")%b%f "
ZSH_THEME_KUBE_PROMPT_PREFIX="%B%F{cyan}("
ZSH_THEME_KUBE_PROMPT_SUFFIX=")%b%f "
