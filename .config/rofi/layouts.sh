#!/usr/bin/env bash

uptime=$(uptime -p | sed -e 's/up //g')
rofi_command="rofi -theme ~/.config/rofi/launcher.rasi"

# Options
BI_428="Human Genetics"
BI_429="Conservation Biology"
BI_463="Sensory and Motor Systems"
CH_335="Organic Chemistry II"
PHL_331="Philosophy of Education"
notes="notes"
dotfiles="dotfiles"

# Variable passed to rofi
options="$BI_428\n$BI_429\n$BI_463\n$CH_335\n$PHL_331\n$notes\n$dotfiles"

chosen="$(echo -e "$options" | $rofi_command -p "$uptime" -dmenu -selected-row 2)"
case $chosen in
    $BI_428)
		./scripts/launch.sh bi-428
        ;;
    $BI_429)
		./scripts/launch.sh bi-429
        ;;
    $BI_463)
		./scripts/launch.sh bi-463
        ;;
    $CH_335)
		./scripts/launch.sh ch-335
        ;;
    $PHL_331)
		./scripts/launch.sh phl-331
        ;;
    $notes)
		./scripts/basic-launch.sh notes
        ;;
    $dotfiles)
		./scripts/basic-launch.sh dotfiles
        ;;
esac
