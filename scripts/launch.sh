#!/bin/bash

bspc config focus_follows_pointer false

code ~/notes/$1 &
sleep 0.42

bspc config split_ratio 0.35 && firefox &
sleep 0.42

bspc config split_ratio 0.65 && kitty -e cava &
sleep 0.42

bspc config split_ratio 0.15 && zathura ~/notes/$1/$1.pdf &
sleep 0.42

bspc node -f west.local
bspc node -f west.local

bspc config split_ratio 0.85 && kitty &
sleep 0.42 &&

bspc config split_ratio 0.5 
bspc config focus_follows_pointer true

exit 0

