#!/bin/bash
icon=""

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata artist) - $(playerctl metadata title)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#81b71a}$icon $metadata"       # Orange when playing
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#868686}$icon $metadata"       # Greyed out info when paused
else
    echo ""                 # Greyed out icon when stopped
fi