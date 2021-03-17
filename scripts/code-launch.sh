#!/bin/bash

bspc config focus_follows_pointer false

feh --bg-scale ~/resources/wallpapers/'spirited-3840x2160.png'

kitty -e cava &
sleep 1

bspc config split_ratio 0.33 && firefox -new-window https://github.com/cullyn-inverba/notes/tree/master/$1 & 
sleep 1

bspc node -f west.local 

bspc config split_ratio 0.12 && code ~/notes/$1 &
sleep 1

bspc node -f east.local 

bspc config split_ratio 0.67 &&  zathura ~/notes/$1/$1.pdf &
sleep 1

bspc config split_ratio 0.68 && kitty -d ~/notes/$1 &
sleep 1

bspc node -f west.local

bspc config split_ratio 0.95 &&  zathura ~/textbooks/$1-text.pdf &
sleep 1

bspc config split_ratio 0.48
bspc config focus_follows_pointer true

exit 0

