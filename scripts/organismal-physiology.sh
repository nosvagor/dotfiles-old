#!/usr/bin/env fish

i3-msg append_layout ~/.config/i3/org-phys.json &&
code ~/Notes |
alacritty |
chromium |
zathura ~/Documents/Textbooks/In-use/Animal-Physiology.pdf |
zathura ~/Notes/organismal-physiology/org-phys.pdf |
zathura ~/Notes/organismal-physiology/lecture-concepts.pdf |
exit 0
