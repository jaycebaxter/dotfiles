#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until polybar has been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on all monitors
if type "xrandr"; then
  for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$monitor polybar main &
  done
else
  polybar main &
fi

