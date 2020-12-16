#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016

1:  襤_command="systemctl poweroff"
2:  _command="systemctl reboot"
3:  _command="bspc quit"
4:  ⏾_command="systemctl hibernate"
5:  _command="lock"

# you can customise the rofi command all you want ...
rofi_command="rofi -no-lazy-grab -show drun -p 拉 -theme powermenu.rasi"

options=$'1:  襤\n2:  \n3:  \n4:  ⏾\n5:  \n' 

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "")_command"