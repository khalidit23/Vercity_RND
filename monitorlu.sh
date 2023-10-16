#!/bin/bash

# Lock the screen
lock_screen() {
    gnome-screensaver-command -l
}

# Unlock the screen
unlock_screen() {
    gnome-screensaver-command -d
}

# Check the command-line argument
case "$1" in
    lock)
        lock_screen
        ;;
    unlock)
        unlock_screen
        ;;
    *)
        echo "Usage: $0 {lock|unlock}"
        exit 1
        ;;
esac

exit 0
