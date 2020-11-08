#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016

poweroff_command="systemctl poweroff"
reboot_command="systemctl reboot"
logout_command="i3-msg exit"
hibernate_command="systemctl hibernate"
suspend_command="systemctl suspend"
lock_command="i3lock"

# you can customise the rofi command all you want ...
rofi_command="rofi -no-lazy-grab -show drun -p Power -theme powermenu.rasi"

options=$'poweroff\nreboot\nlock\nlogout\nhibernate\nsuspend' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"