#!/bin/bash

##
# Wallpaper manager
# Handles changing wallpaper and running blur listener
# -
# Usage: wallpaper.sh path-to-file.jpg
##

export basepath=$HOME/.theme/wallpapers

# end if not given proper file
if [[ ! -f $basepath/$1 ]]; then
  echo "File does not exist or is directory: $1"
  exit
fi

# set wallpaper and export as env variable
feh --bg-fill $basepath/$1
export WALLPAPER=$1

# run script which blurs/unblurs background (
# but first kill if it's already running
blurPID=$(pgrep -fl blur_wallpaper.sh | grep -P "[0-9]+" -o)
if [[ $blurPID ]]; then
  echo "Killing $blurPID"
  kill $blurPID
fi
sh $basepath/../scripts/blur_wallpaper.sh &

# run script which blurs/unblurs background


