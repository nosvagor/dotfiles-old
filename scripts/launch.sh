#!/bin/bash

bspc config focus_follows_pointer false

bspc desktop -f ^2
feh --bg-scale ~/resources/wallpapers/'jelly-3840x2160.jpg'

code ~/notes/$1 &
sleep 1.0

bspc config split_ratio 0.38 && firefox -new-window https://github.com/cullyn-inverba/notes/tree/master/$1 & 
sleep 1.0

bspc config split_ratio 0.65 && kitty -e cava &
sleep 1.0

bspc config split_ratio 0.13 && zathura ~/notes/$1/$1.pdf &
sleep 1.0

bspc node -f west.local
bspc node -f west.local

bspc config split_ratio 0.88 && kitty -d ~/notes &
sleep 1.0 &&

bspc node -f east.local 

bspc config split_ratio 0.95 && zathura ~/textbooks/$1-text.pdf &
sleep 1.0 &&

bspc config split_ratio 0.5
bspc config focus_follows_pointer true

exit 0

