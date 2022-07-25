#!/bin/bash

# Terminate if running
killall -q polybar

# Wait until killed
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Run polybar
polybar & 
# -c ~/.config/polybar/config // todo: write the config
echo "Polybar launched succesfully"

