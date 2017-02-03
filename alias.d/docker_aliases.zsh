alias docker-clean-exited-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias docker-clean-dangling-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
