#!/bin/bash

# Lock the screen
lock_screen() {
    xdg-screensaver lock
}

# Unlock the screen
unlock_screen() {
    xdg-screensaver reset
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
