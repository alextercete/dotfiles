function ssh_prompt_info() {
  if [ -n "$SSH_CONNECTION" ]; then
    local host_ip=$(echo $SSH_CONNECTION | awk '{print $1}')
    echo "${ZSH_THEME_SSH_PROMPT_PREFIX=<ssh:}$host_ip${ZSH_THEME_SSH_PROMPT_SUFFIX=>}"
  fi
}
