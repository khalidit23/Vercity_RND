#!/bin/bash
cd /home/admin/ansible

ansible all -a "apt install -y gnome-screensaver" -u admin

sleep 50

ansible all -a "sudo -u admin DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus" gnome-screensaver-command -d" -u admin
