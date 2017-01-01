local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)%{$reset_color%}"

function get_git_repo(){
    export GIT_REPO=$(basename `git rev-parse --show-toplevel 2> /dev/null` 2> /dev/null)
}
precmd_functions+=(get_git_repo)

# Do this so we can get the reponame in the git parens.
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}⎇ "
PROMPT='%{$fg[yellow]%}%n@%m %{$fg_bold[cyan]%}%2c%{$reset_color%} %{$fg[magenta]%}%D{%a %d %b %Y %X %Z}%{$reset_color%} (%{$fg_bold[yellow]%}${GIT_REPO}%{$reset_color%}$(git_super_status)
${ret_status} '

# NOTE: This will only work with the git-prompt oh-my-zsh plugin enabled
unset RPROMPT
