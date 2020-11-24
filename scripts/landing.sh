#!/usr/bin/env fish
i3-msg append_layout ~/.config/i3/workspace-2.json &&
alacritty |
glava --force-mod=bars |
glava --force-mod=bars2  |
glava --force-mod=circle   |
glava --force-mod=bars  |
glava --force-mod=bars2  |
glava --force-mod=circle2 |
picom --no-use-damage
exit 0
