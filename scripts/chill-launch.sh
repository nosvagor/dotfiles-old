#!/bin/bash

bspc config focus_follows_pointer false

bspc desktop -f ^1
feh --bg-scale ~/resources/wallpapers/'spirited-3840x2160.png'

kitty -e cava &
sleep 1

bspc config split_ratio 0.48 && firefox &
sleep 1

bspc node -f west.local 

bspc config split_ratio 0.12 && discord &
sleep 1

bspc config split_ratio 0.5 
bspc config focus_follows_pointer true

exit 0

