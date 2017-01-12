#startx
#[[ -f ~/.zshrc ]] && . ~/.zshrc

echo "zprofile"
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec ~/.scripts/wmchooser
fi
