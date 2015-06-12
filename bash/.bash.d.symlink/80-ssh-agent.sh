#!/bin/bash

read -p "Do you want to start SSH Agent? [y/N] " answer
case $answer in
  Y|y)
    eval `ssh-agent`>/dev/null && ssh-add
    ;;
esac

