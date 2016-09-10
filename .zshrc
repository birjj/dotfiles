HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=

# folders
export THEME=~/.theme
export SCRIPTS=~/.scripts
export CONFIG=~/.config
export PATH=$SCRIPTS:${PATH}

# oh-my-zsh
ZSH=/usr/share/oh-my-zsh/
ZSH_CUSTOM=$THEME/zsh
ZSH_THEME="minimal"
plugins=(git colored-man-pages colorize command-not-found)
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
unsetopt share_history
setopt no_share_history

# kbd
bindkey -e
setxkbmap dk

# stuff
export LANG=en_US.UTF-8
export EDITOR='nano'
export VISUAL='nano'

# aliases
alias wifi='sudo wifi-menu -o wlp2s0'
alias shutdown='sudo systemctl poweroff'
alias restart='sudo systemctl reboot'
alias pls=please
alias please='sudo $(fc -ln -1)'
alias show='hidden -c | showhidden'
alias showall='hidden -c | showhidden --all'

# colorizing commands
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
