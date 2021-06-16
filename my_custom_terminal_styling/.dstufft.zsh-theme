# Theme with my custom colours applied
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⚡️' && return
    hg root >/dev/null 2>/dev/null && echo '⚡️' && return
    echo '⚡️'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='%{$FG[166]%}%n%{$reset_color%} @ %{$FG[166]%}%m%{$reset_color%} in %{$FG[162]%}%~%{$reset_color%}$(git_prompt_info)
$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$FG[128]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[154]%}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[154]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
