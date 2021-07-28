#!/usr/bin/env bash

rofi_command="rofi -theme ~/.config/rofi/layouts.rasi"

#Options
notes="notes"
dotfiles="dotfiles"
golang="golang"
calc="calculus"
javascript="javascript"
bash="bash"
capstone="capstone"
python="python"
linear="linear"
pandas="pandas"
solidity="solidity"
c="c++"
stat="statistics"

# Variable passed to rofi
options="$golang\n$solidity\n$javascript\n$bash\n$c\n$python\n\
$notes\n$dotfiles\n$calc\n$linear\n$pandas\n$stat\n$capstone"

chosen="$(echo -e "$options" | $rofi_command -p "" -dmenu)"
case $chosen in
    $notes)
		./scripts/basic-launch.sh notes
        ;;
    $dotfiles)
		./scripts/basic-launch.sh dotfiles
        ;;
    $golang)
		./scripts/code-launch.sh golang
        ;;
    $c)
		./scripts/code-launch.sh c++
        ;;
    $bash)
        ./scripts/code-launch.sh bash
        ;;
    $calc)
        ./scripts/code-launch.sh python/calculus
        ;;
    $solidity)
        ./scripts/code-launch.sh solidity
        ;;
    $python)
        ./scripts/code-launch.sh python
        ;;
    $javascript)
        ./scripts/code-launch.sh javascript
        ;;
    $capstone)
        ./scripts/code-launch.sh capstone
        ;;
    $pandas)
		./scripts/code-launch.sh python/pandas
        ;;
    $linear)
		./scripts/code-launch.sh python/mth-343
        ;;
    $stat)
		./scripts/code-launch.sh python/statistics
        ;;
esac
