#!/bin/zsh

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
urxvt &
udiskie &

# keyring (for wifi applet)
# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
eval $("ssh-agent -s")
ssh-add ~/.ssh/id_rsa

# run wm-independent config
syndaemon -i 0.2 -k -R &
dunst &
#xscreensaver -no-splash &
xset -b

# set basic gui
xsetroot -cursor_name left_ptr &
$HOME/.scripts/wallpaper 103929.png &

# run bspwm, and keep X running until it quits
bspwm >> $HOME/.logs/bspwm
