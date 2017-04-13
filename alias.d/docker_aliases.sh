alias docker-clean-exited-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias docker-clean-dangling-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias docker-delete-all-images='docker rmi $(docker images -q) -f'
alias docker-clean-all-images='docker-delete-all-images'

alias dck='docker'
alias di='docker images'

alias dps='docker ps'
alias dpsa='docker ps -a'

alias drm='docker rm'
alias drmi='docker rmi'

alias dex='docker exec'
alias dexit='docker exec -it'
alias drun='docker run'
alias drunit='docker run -it'
