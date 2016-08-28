#!/bin/bash

##
# Replaces the wallpaper with a blurred one if windows are open
# Dependency: wmutils (lsw)
##

echo "Basepath: $basepath"
is_blurred=false
# infinite loop so we keep checking
while :;
do
  win="$(lsw)"

  # if we're currently showing unblurred, and we should blur
  if [[ $win && $is_blurred == false ]]; then
    feh --bg-fill $basepath/blurs/$WALLPAPER
    is_blurred=true
  # else if we're showing blurred, and should unblur
  elif [[ ! $win && $is_blurred == true ]]; then
    feh --bg-fill $basepath/$WALLPAPER
    is_blurred=false
  fi

  # sleep so we don't use crazy amounts of resources
  sleep 0.1
done
