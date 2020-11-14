#!/usr/bin/env fish

i3-msg append_layout ~/.config/i3/organic-chemistry.json &&
code ~/Notes |
chromium |
zathura ~/textbooks/Klein-Organic-Chemistry-3rd.pdf |
zathura ~/textbooks/Klein-Solutions.pdf |
zathura ~/Notes/organic-chemistry/org-chem.pdf |
zathura ~/Notes/organic-chemistry/temp-apres.pdf |
zathura ~/Notes/organic-chemistry/apres-lecture-quiz.pdf |
alacritty |
exit 0
