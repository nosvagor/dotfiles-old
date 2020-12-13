#!/bin/bash

echo "tput colors test"
echo "================"
echo
echo "tput setaf/setab [0-9] ... tput sgr0"
echo

for fg_color in {0..7}; do
  set_foreground=$(tput setaf $fg_color)
  for bg_color in {0..7}; do
    set_background=$(tput setab $bg_color)
    echo -n $set_background$set_foreground
    printf ' F:%s B:%s ' $fg_color $bg_color
  done
  echo $(tput sgr0)
done

echo
echo "END"
echo
exit
