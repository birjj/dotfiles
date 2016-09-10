# left prompt is simply top-most folder, followed by arrow
PROMPT='%F{8}%1d » %f'

# right prompt is simply branch name, colored by git status
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}"
# we color green by default, which is overwritten by any failures
RPROMPT='%{$fg[green]%}$(git_prompt_status)$(git_current_branch)%{$reset_color%}'
