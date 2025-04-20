#!/bin/bash

apps="firefox\nnautilus\nsteam\nvesktop"

selected=$(echo -e "$apps" | rofi -dmenu -p "💙" -theme /home/jayce/.config/rofi/custom-theme.rasi)

case $selected in
    firefox) firefox & ;;
    nautilus) nautilus & ;;
    steam) steam & ;;
    vesktop) vesktop & ;;
    *) exit 1 ;;
esac

