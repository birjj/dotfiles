#!/bin/zsh

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
# firefox &
urxvt &

# keyring (for wifi applet)
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# run wm-independent config
syndaemon -i 0.2 -k -R &
dunst &

# set basic gui
xsetroot -cursor_name left_ptr &
$HOME/.scripts/wallpaper 2042.jpg &

# run bspwm, and keep X running until it quits
bspwm
