#!/bin/bash

environment=~/.ssh/agent_environment

agent_is_running() {
  if [[ "$SSH_AUTH_SOCK" ]]; then
    ssh-add -l >/dev/null 2>&1 || [[ $? -eq 1 ]]
  else
    false
  fi
}

agent_has_keys() {
  ssh-add -l >/dev/null 2>&1
}

agent_restore() {
  if [[ -f "${environment}" ]]; then
    source "${environment}" >/dev/null
  fi
}

agent_initialize() {
  (umask 077; ssh-agent >"${environment}")
  source "${environment}" >/dev/null
}

if ! agent_is_running; then
  agent_restore
fi

if ! agent_is_running; then
  agent_initialize && ssh-add
elif ! agent_has_keys; then
  ssh-add
fi

unset environment
