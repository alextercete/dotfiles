function ssh_prompt_info() {
  if [ -n "$SSH_CONNECTION" ]; then
    echo "${ZSH_THEME_SSH_PROMPT_PREFIX=<ssh:}$(hostname -s)${ZSH_THEME_SSH_PROMPT_SUFFIX=>}"
  fi
}
