#!/usr/bin/env fish

i3-msg append_layout ~/.config/i3/evolution.json &&
code ~/Notes/evolution |
alacritty |
chromium |
zathura ~/Documents/Textbooks/In-use/Evolutionary-Analysis-5th.pdf |
zathura ~/Notes/evolution/evolution.pdf |
zathura ~/Notes/evolution/discussion-questions.pdf |
exit 0
