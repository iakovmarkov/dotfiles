#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=eDP1 TRAY=right polybar main &
MONITOR=DP1-2 polybar main &
MONITOR=HDMI1 polybar main &