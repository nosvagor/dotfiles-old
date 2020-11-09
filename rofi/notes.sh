#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016


c1="evolution"
c2="organic-chemistry"
c3="organismal-physiology"
c="notes"

# you can customise the rofi command all you want ...
rofi_command="rofi -show drun -p Notes -theme notes.rasi"

options="$c1\n$c2\n$c3\n$c"

# ... because the essential options (-dmenu and -p) are added here
eval "~/scripts/$(echo -e "$options" | $rofi_command -dmenu -p "").sh"