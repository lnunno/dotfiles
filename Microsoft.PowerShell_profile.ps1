New-Alias which get-command

# See: https://stackoverflow.com/questions/2858484/creating-aliases-in-powershell-for-git-commands
function Get-GitStatus { & git status -sb $args }
New-Alias -Name gs -Value Get-GitStatus -Force -Option AllScope
function Get-GitCommit { & git commit -ev $args }
New-Alias -Name gc -Value Get-GitCommit -Force -Option AllScope
function Get-GitAdd { & git add $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope
function Get-GitTree { & git log --graph --oneline --decorate $args }
New-Alias -Name gt -Value Get-GitTree -Force -Option AllScope
function Get-GitPush { & git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope
function Get-GitPull { & git pull $args }
New-Alias -Name gu -Value Get-GitPull -Force -Option AllScope
function Get-GitFetch { & git fetch $args }
New-Alias -Name gf -Value Get-GitFetch -Force -Option AllScope
function Get-GitCheckout { & git checkout $args }
New-Alias -Name gco -Value Get-GitCheckout -Force -Option AllScope
function Get-GitBranch { & git branch $args }
New-Alias -Name gb -Value Get-GitBranch -Force -Option AllScope
function Get-GitRemote { & git remote -v $args }
New-Alias -Name gr -Value Get-GitRemote -Force -Option AllScope
