#!/usr/bin/env bash

rofi_command="rofi -theme ~/.config/rofi/layouts.rasi"

# Options
MTH_261="linear"
BI_337="cell biology"
BI_430="recombinant"
BI_455="histology"
notes="notes"
dotfiles="dotfiles"
golang="golang"
stat="statistics"
pandas="pandas"

# Variable passed to rofi
options="$dotfiles\n$notes\n$MTH_261\n$BI_337\n$BI_430\n$BI_455\n$golang\n$stat\n$pandas"

chosen="$(echo -e "$options" | $rofi_command -p "" -dmenu)"
case $chosen in
    $MTH_261)
		./scripts/code-launch.sh mth-261
        ;;
    $BI_337)
		./scripts/uni-launch.sh bi-337
        ;;
    $BI_430)
		./scripts/uni-launch.sh bi-430
        ;;
    $BI_455)
		./scripts/uni-launch.sh bi-455
        ;;
    $notes)
		./scripts/basic-launch.sh notes
        ;;
    $dotfiles)
		./scripts/basic-launch.sh dotfiles
        ;;
    $golang)
		./scripts/code-launch.sh golang
        ;;
    $stat)
        ./scripts/code-launch.sh stat
        ;;
    $pandas)
        ./scripts/code-launch.sh pandas
esac
