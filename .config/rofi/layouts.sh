#!/usr/bin/env bash

rofi_command="rofi -theme ~/.config/rofi/layouts.rasi"

# Options
BI_428="BI: 428 - Human Genetics"
BI_429="BI: 429 - Conservation Biology"
BI_463="BI: 463 - Sensory and Motor Systems"
CH_335="CH: 335 - Organic Chemistry II"
PHL_331="PHL: 331 - Philosophy of Education"
notes="notes"
dotfiles="dotfiles"
chill="chill"

# Variable passed to rofi
options="$PHL_331\n$CH_335\n$BI_428\n$BI_429\n$BI_463\n$notes\n$dotfiles\n$chill"

chosen="$(echo -e "$options" | $rofi_command -p "" -dmenu -selected-row 2)"
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
		./scripts/basic-launch.sh notes 2
        ;;
    $dotfiles)
		./scripts/basic-launch.sh dotfiles 3
        ;;
    $chill)
		./scripts/chill-launch.sh 
        ;;
esac
