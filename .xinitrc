#!/bin/bash

# set basic gui
xsetroot -cursor_name left_ptr &
~/.theme/wallpaper.sh 2042.jpg

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
exec 2bwm &
exec urxvt
