#!/bin/bash

# Configure external monitor if connected
if [ $(xrandr | grep "VGA1 connected" | wc -c) -gt 0 ]
then
    xrandr --output VGA1 --auto --above LVDS1 --output LVDS1 --auto
    xrandr --output VGA1 --pos -277x0
fi

# Update .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Start i3
exec i3
