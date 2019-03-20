#!/bin/sh

xrandr --output DP1-2-8 --off
sleep 1
xrandr --output DP1-2-8 --auto
sleep 1
xrandr --output DP1-2-8 --left-of eDP1

setxkbmap 'us,ru' -option 'grp:caps_toggle,grp_led:caps'
