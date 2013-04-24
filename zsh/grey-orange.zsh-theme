# ZSH Theme - Preview: http://dl.dropbox.com/u/1552408/Screenshots/2010-04-08-oh-my-zsh.png

autoload -U add-zsh-hook

B_ORANGE=$FG[214]
B_LIGHT_GREY=$FG[240]
RED=$FG[95]

if [ $UID -eq 0 ]; then NCOLOR=$RED; else NCOLOR=$B_LIGHT_GREY; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

#PROMPT='%{$iNCOLOR%}%n%{$fg[green]%}@%m%{$reset_color%} %~ \
#$(git_prompt_info)\
#%{$fg[red]%}%(!.#.»)%{$reset_color%} '

PROMPT='%{$NCOLOR%}%n%{$NCOLOR%}@%m%{$reset_color%} %~ \
$(git_prompt_info)\
%{$fg[red]%}%(!.#.»)%{$reset_color%} '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# Custom colors
#eval my_orange='%{$fg[green]%} %{$fg[yellow]%}'
#bwhite="%{^[[01;37m%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$B_ORANGE%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"

