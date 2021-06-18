#!/usr/bin/env bash

rofi_command="rofi -theme ~/.config/rofi/layouts.rasi"

#Options
# MTH_343="Applied Linear Algebra"
# MTH_253="Calculus III"
# CS_162="Intro to Computer Science"
# $MTH_343\n$BI_253\n$CS_162\n
notes="notes"
dotfiles="dotfiles"
golang="golang"
stat="statistics"
htmlcss="html-css"

# Variable passed to rofi
options="$dotfiles\n$notes\n$golang\n$stat\n$htmlcss"

chosen="$(echo -e "$options" | $rofi_command -p "" -dmenu)"
case $chosen in
    # $MTH_343)
	# 	./scripts/code-launch.sh mth-343
    #     ;;
    # $MTH_253)
	# 	./scripts/uni-launch.sh mth-253
    #     ;;
    # $CS_162)
	# 	./scripts/uni-launch.sh cs-162
    #     ;;
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
        ./scripts/code-launch.sh statistics
        ;;
    $htmlcss)
        ./scripts/code-launch.sh html-css
esac
