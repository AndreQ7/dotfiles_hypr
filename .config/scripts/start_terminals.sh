#!/bin/bash

# ~/.config/hypr/scripts/start_terminals.sh


# tyy-clock
kitty --title "Term_TyyClock" -e tty-clock -s -C7 -c &
# cava
kitty --title "Term_Cava" -e cava &

kitty --title "Term_General" &
sleep 1
hyprctl dispatch focuswindow title:Term_General