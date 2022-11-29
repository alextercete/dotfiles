PROMPT='%F{green}‹dir:%B%~%b›%f $(git_prompt_info)$(aws_prompt_info)$(kube_prompt_info)$(vpn_prompt_info)'$'\n''%B%F{green}$ %b%f'
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%F{green}‹git:%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b›%f "
ZSH_THEME_AWS_PREFIX="%F{cyan}‹aws:%B"
ZSH_THEME_AWS_SUFFIX="%b›%f "
ZSH_THEME_KUBE_PROMPT_PREFIX="%F{cyan}‹k8s:%B"
ZSH_THEME_KUBE_PROMPT_SUFFIX="%b›%f "
ZSH_THEME_VPN_PROMPT_PREFIX="%F{cyan}‹vpn:%B"
ZSH_THEME_VPN_PROMPT_SUFFIX="%b›%f "
