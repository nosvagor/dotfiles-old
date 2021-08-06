#!/bin/bash

bspc config focus_follows_pointer false
bspc desktop -l tiled

feh --bg-scale ~/resources/wallpapers/'jelly-3840x2160.jpg'

kitty -e cava &
sleep 0.69

bspc config split_ratio 0.11 && bspc node -p south &&  code ~/$1 &
sleep 1

bspc config split_ratio 0.88 && bspc node -p south && kitty -e cava &
sleep 0.69

bspc node -f north.local 

bspc config split_ratio 0.42 && firefox --new-window https://github.com/cullyn-inverba/notes &
sleep 1

bspc config split_ratio 0.48
bspc config focus_follows_pointer true

exit 0

