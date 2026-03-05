PROMPT='%F{green}%Bzsh%b ‹dir:%B$(shrink_path -f)%b›%f $(git_prompt_info)$(ssh_prompt_info)'$'\n''%B%F{green}$ %b%f'
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%F{green}‹git:%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b›%f "
ZSH_THEME_SSH_PROMPT_PREFIX="%F{cyan}‹ssh:%B"
ZSH_THEME_SSH_PROMPT_SUFFIX="%b›%f "
