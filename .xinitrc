#!/bin/zsh

# set basic gui
xsetroot -cursor_name left_ptr &
(sleep 0.01; wallpaper 2042.jpg) &

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
firefox &
atom &

# run terminal daemon
urxvtd -q -o -f
(sleep 0.1; urxvtc) &

# run bspwm, and keep X running until it quits
bspwm

