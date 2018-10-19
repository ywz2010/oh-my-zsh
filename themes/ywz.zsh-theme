
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}🤔 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})%{$fg[green]%}😊 %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[red]%}✚%{$reset_color%} " 
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}✹%{$reset_color%} " 
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%} " 
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%}➜%{$reset_color%} " 
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}═%{$reset_color%} " 
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}✭%{$reset_color%} "


function prompt_char {
	if [ $UID -eq 0 ];
		then echo "%{$fg[red]%}#%{$reset_color%}";
		else echo %{$fg[green]%}➜ %{$reset_color%};
	fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)
%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}: %{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)$(git_prompt_status)
%_ $(prompt_char) '

RPROMPT='%{$fg[yellow]%}[%*]%{$reset_color%}'
