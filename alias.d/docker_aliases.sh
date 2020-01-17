# Aggregate command aliases for cleaning out space
alias docker-clean-exited-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias docker-clean-dangling-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias docker-delete-all-images='docker rmi $(docker images -q) -f'
alias docker-clean-all-images='docker-delete-all-images'
alias docker-clean-dangling-volumes='docker volume rm $(docker volume ls -f dangling=true -q)'
alias docker-stop-all-containers='docker container stop $(docker container ls -aq)'
alias docker-remove-all-containers='docker container rm $(docker container ls -aq)'
alias docker-stop-and-remove-all-containers='docker-stop-all-containers && docker-remove-all-containers'
alias restart-docker='killall Docker && open /Applications/Docker.app'

alias dck='docker'
alias di='docker images'

alias dps='docker ps'
alias dpsa='docker ps -a'

alias drm='docker rm'
alias drmi='docker rmi'

# Exec/run aliases
alias dex='docker exec'
alias dexit='docker exec -it'
alias drun='docker run'
alias drunit='docker run -it'

# Volume aliases
alias dv='docker volume'
alias dvls='docker volume ls'
alias dvrm='docker volume rm'
