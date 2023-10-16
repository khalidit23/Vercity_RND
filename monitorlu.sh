#!/bin/bash

if [ "$EUID" -eq 0 ]; then
  echo "Exiting root mode..."
  target_user="admin"
  
  su -l "$target_user" -c "gnome-screensaver-command -l"
  exit
fi

gnome-screensaver-command -l

sleep 10

gnome-screensaver-command -d
