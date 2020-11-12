#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload Main &
done
