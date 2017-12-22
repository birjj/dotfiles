HISTFILE=/dev/null
HISTSIZE=
SAVEHIST=

# ssh
# export TERM='xterm-256color'
#eval "$(ssh-agent -s)" > /dev/null
#ssh-add ~/.ssh/id_rsa >/dev/null 2>&1

# folders
export THEME=~/.theme
export SCRIPTS=~/.scripts
export CONFIG=~/.config
export PRIV=~/.priv
export PATH=$SCRIPTS:${PATH}
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# oh-my-zsh
ZSH=/usr/share/oh-my-zsh/
ZSH_CUSTOM=$THEME/zsh
ZSH_THEME="minimal"
plugins=(git colored-man-pages colorize command-not-found zsh-autosuggestions)
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
unsetopt share_history
setopt no_share_history

# kbd
bindkey -e
#setxkbmap dk
#xmodmap ~/.Xmodmap

# stuff
export PYTHONPATH=$PYTHONPATH:$HOME/.libs/swampy
export LANG=en_US.UTF-8
export EDITOR='nano'
export VISUAL='nano'

# java stuff
export _JAVA_AWT_WM_NONREPARENTING=1

# aliases
alias wifi='sudo wifi-menu -o wlp2s0'
alias shutdown='systemctl poweroff'
alias restart='systemctl reboot'
alias pls=please
alias please='sudo $(fc -ln -1)'
alias show='hidden -c | showhidden'
alias showall='hidden -c | showhidden --all'
alias ffeh='feh -F'

# colorizing commands
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# music
alias music='chromium --app=http://127.0.0.1:6680/mopify &'

# GAMES
WINDOWS=~/.wine/drive_c
alias Poker='~/Desktop/PokerStars.dk.desktop'
alias poker=Poker
#alias Hearthstone='wine "$WINDOWS/Program Files (x86)/Battle.net/Battle.net.exe" &> /dev/null'
#alias hearthstone=Hearthstone
#alias Battlenet=Hearthstone
#alias battlenet=Hearthstone
#alias eu4='~/.steam/steam/steamapps/common/Europa\ Universalis\ IV/eu4'

. $PRIV/.zshrc
