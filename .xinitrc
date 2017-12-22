#!/bin/zsh

# load X resources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# run applications
compton &
urxvt &
udiskie &

# keyboard
setxkbmap dk
xmodmap -e "keycode 62 = Up NoSymbol Up"
xmodmap -e "keycode 105 = Left NoSymbol Left"
xmodmap -e "remove control = Left"
xmodmap -e "remove shift = Up"

# keyring (for wifi applet)
# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
eval $("ssh-agent -s")
ssh-add ~/.ssh/id_rsa

# run wm-independent config
syndaemon -i 0.2 -k -R &
dunst &
#xscreensaver -no-splash &
xset -b
pgrep redshift &> /dev/null || redshift &> /dev/null &

# set basic gui
xsetroot -cursor_name left_ptr &
$HOME/.scripts/wallpaper 103929.png &

# java stuff
export _JAVA_AWT_WM_NONREPARENTING=1

# run bspwm, and keep X running until it quits
bspwm >> $HOME/.logs/bspwm
