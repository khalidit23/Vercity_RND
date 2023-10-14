#!/bin/bash

if [ "$EUID" -eq 0 ]; then
  echo "This script should not be run as root. Exiting root mode."
  exit 1
fi
#exit user mode

gnome-screensaver-command -l
