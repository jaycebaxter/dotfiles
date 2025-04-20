#!/bin/bash

apps="firefox\nnautilus\nsteam\ndiscord"

selected=$(echo -e "$apps" | rofi -dmenu -p "💙" -theme /home/jayce/.config/rofi/custom-theme.rasi)

case $selected in
    firefox) firefox & ;;
    nautilus) nautilus & ;;
    steam) steam & ;;
    discord) discord & ;;
    *) exit 1 ;;
esac

