#!/bin/bash

apps="files\nfirefox\nsteam\ndiscord\nspotify"

selected=$(echo -e "$apps" | rofi -dmenu -p "💙" -theme /home/jayce/.config/rofi/custom-theme.rasi)

case $selected in
    files) nautilus & ;;
    firefox) firefox & ;;
    steam) steam & ;;
    discord) vesktop & ;;
    spotify) spotify & ;;
    *) exit 1 ;;
esac

