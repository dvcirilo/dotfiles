local user="%(!.%{$fg[blue]%}.%{$fg_bold[blue]%})%n%{$reset_color%}"
local host="@${host_repr[$(hostname)]:-$(hostname)}%{$reset_color%}"
local time="%{$fg[blue]%}%D{[%H:%M:%S]}%{$reset_color%}"
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt prompt_subst
PROMPT=$'╭─ ${user}$fg_bold[red]${host} %{$reset_color%}%{$fg[white]%}[$(shrink_path -f)]%{$reset_color%} $(git_prompt_info)\
╰─>%{$fg[blue]%} $%{$fg_bold[blue]%} %{$reset_color%}'
RPS1='$(vi_mode_prompt_info)${return_code} ${time}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

