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
alias gcv="git commit -v"
alias gco="git checkout"
alias gm="git merge"
alias gd="git diff"
alias gpo='git push --set-upstream origin'                                                                                                                                                                                                               
alias gporigin='git push --set-upstream origin'
alias git-prune-branches='git branch --merged | grep -v "\*" | grep -Ev "(\*|master|develop|staging)" | xargs -n 1 git branch -d'
                                                                                                                                                                                                                                                              
# Git push my branch to origin's branch of the same name.                                                                                                                                                                                                     
alias git-push-upstream='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
