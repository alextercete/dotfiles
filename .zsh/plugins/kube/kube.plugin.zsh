function kube_prompt_info() {
  if type kubectx > /dev/null; then
    echo "${ZSH_THEME_KUBE_PROMPT_PREFIX=<k8s:}$(kubectx -c)/$(kubens -c)${ZSH_THEME_KUBE_PROMPT_SUFFIX=>}"
  fi
}
