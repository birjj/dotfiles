#!/bin/zsh

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
firefox &

# run terminal daemon
urxvtd -q -o -f
(sleep 0.3; urxvtc) &

# set basic gui
xsetroot -cursor_name left_ptr &
$HOME/.scripts/wallpaper 2042.jpg &

# run bspwm, and keep X running until it quits
bspwm

