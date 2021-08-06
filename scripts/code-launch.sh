#!/bin/bash

bspc config focus_follows_pointer false &
bspc desktop -l tiled

feh --bg-scale ~/resources/wallpapers/'jelly-3840x2160.jpg'

kitty -e cava &
sleep 0.69

bspc config split_ratio 0.338 && firefox -new-window https://calendar.google.com/calendar/u/0/r & 
sleep 1

bspc node -f west.local 

bspc config split_ratio 0.12 && code ~/notes/$1 &
sleep 1

bspc node -f east.local 

bspc config split_ratio 0.67 &&  firefox -new-window https://github.com/cullyn-inverba/notes/tree/master/$1 &
sleep 1

bspc config split_ratio 0.68 && kitty -d ~/notes/$1 &
sleep 1

bspc config split_ratio 0.48
bspc config focus_follows_pointer true

exit 0

