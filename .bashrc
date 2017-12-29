#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source scripts in the ~/.bash.d folder
if [ -d ~/.bash.d ]; then
  for file in ~/.bash.d/*.sh; do
    if [ -r $file ]; then
      source $file
    fi
  done

  unset file
fi
