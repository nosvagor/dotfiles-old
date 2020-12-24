#!/bin/bash

bspc config focus_follows_pointer false

kitty -e cava &
sleep 0.5

bspc config split_ratio 0.49 && firefox &
sleep 0.5

bspc node -f west.local 

bspc config split_ratio 0.10 && code ~/$1 &
sleep 0.5

bspc config split_ratio 0.75 && kitty -e ranger &
sleep 0.5

bspc config split_ratio 0.645 && kitty &
sleep 0.5 &&

bspc config split_ratio 0.5 
bspc config focus_follows_pointer true

exit 0

