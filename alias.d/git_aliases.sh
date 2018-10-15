# Git aliases
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gs="git status"
alias gu="git pull"
alias gp="git push"
alias gl="git log"
alias glv="git log -p"
alias gc="git commit"
alias gcam='git commit -am'
alias gcv="git commit -v"
alias gco="git checkout"
alias gcod="git checkout develop"
alias gcom="git checkout master"
alias gm="git merge"
alias gd="git diff"
alias gpo='git push --set-upstream origin'
alias gporigin='git push --set-upstream origin'
alias git-prune-branches='git branch --merged | grep -v "\*" | grep -Ev "(\*|master|develop|staging)" | xargs -n 1 git branch -d'

# Git push branch to origin's branch of the same name.
alias git-push-upstream='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
alias gpu='git-push-upstream'
alias git-delete-remote-branch='git push --delete origin'
compdef _git git-delete-remote-branch=git-checkout

