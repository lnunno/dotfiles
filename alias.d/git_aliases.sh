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
alias git-copy-last-commit-message='git log -1 --pretty=%B | cat | pbcopy'
alias cdg='cd $(git rev-parse --show-toplevel)'
alias git-branchname='git rev-parse --abbrev-ref HEAD'
alias backup-branch='git branch $(git-branchname)-backup && echo "Created branch $(git-branchname)-backup"'
alias remove-backup='git branch -D $(git-branchname)-backup'
alias update-backup='remove-backup && backup-branch'
alias my-branches='git --no-pager branch -a | grep lnunno'
alias my-backups='my-branches | grep backup'
alias remove-all-backup-branches='my-backups | cat | xargs -n 1 git branch -D'
