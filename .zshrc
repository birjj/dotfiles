HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export THEME=~/.theme
export SCRIPTS=~/.scripts
export CONFIG=~/.config
export PATH=$SCRIPTS:${PATH}

# kbd
bindkey -e
setxkbmap dk

# aliases
alias wifi='sudo wifi-menu -o wlp2s0'
alias shutdown='sudo shutdown now'
alias restart='sudo restart now'
alias pls=please
alias please='sudo $(fc -ln -1)'
alias show='hidden -c | showhidden'
alias showall='hidden -c | showhidden --all'
