function vpn_prompt_info() {
  local vpn_status=$(ifconfig "${ZSH_THEME_VPN_PROMPT_INTERFACE=utun6}" &> /dev/null && echo "on" || echo "off")
  echo "${ZSH_THEME_VPN_PROMPT_PREFIX=<vpn:}$vpn_status${ZSH_THEME_VPN_PROMPT_SUFFIX=>}"
}
