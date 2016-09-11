# left prompt is simply top-most folder, followed by arrow
PROMPT='%F{8}%1~ » %f'

# right prompt is simply branch name, colored by git status
# red : behind remote (need to pull & merge)
# yellow : unstaged stuff (need to add)
# green : ahead of remote
# white : no changes
red="%{$fg[red]%}"
yellow="%{$fg[yellow]%}"
green="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="$red"
ZSH_THEME_GIT_PROMPT_BEHIND="$red"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="$green"
ZSH_THEME_GIT_PROMPT_AHEAD="$green"
ZSH_THEME_GIT_PROMPT_DIRTY="$yellow"
ZSH_THEME_GIT_PROMPT_CLEAN=""
# we color green by default, which is overwritten by any failures
RPROMPT='$(git_remote_status)$(parse_git_dirty)$(git_current_branch)%{$reset_color%}'
