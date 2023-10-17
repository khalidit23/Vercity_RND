#!/bin/bash
sudo -u admin123 DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus" gnome-screensaver-command -l

sleep 10

sudo -u admin123 DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus" gnome-screensaver-command -d