#!/bin/bash

# set basic gui
xsetroot -cursor_name left_ptr &
wallpaper 2042.jpg &

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
exec bspwm &
exec chromium &
exec atom &
exec urxvt
