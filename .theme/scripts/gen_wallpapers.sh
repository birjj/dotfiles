#!/bin/bash

##
# Generates blurred versions of all ./wallpapers/*
# Places the result in ./wallpapers/blurs/
##
WALLS=./wallpapers
BLURS=$WALLS/blurs

function blur() {
  if [[ -f $1 ]]; then
    local OUTP=$BLURS/$(basename $1)
    echo "$1 -> $OUTP"
    ffmpeg -loglevel panic -i "$1" -vf boxblur=5:5 "$OUTP" -y
  fi
}

for img in ./wallpapers/*; do
  blur $img
done
