#!/bin/bash

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Source scripts in the ~/.bash.d folder
if [[ -d "$HOME/.bash.d" ]]; then
  for file in ~/.bash.d/*.sh; do
    [[ -r "${file}" ]] && source "${file}"
  done

  unset file
fi
