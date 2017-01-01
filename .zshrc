# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lucas"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt autojump)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR='vim'

# Source all user defined aliases
for file in ~/alias.d/*; do
    source "$file"
done

export GOPATH=~/projects/go
export PATH=/opt/VSCode-linux-x64:~/bin:~/scripts:$GOPATH/bin:$PATH

# Source scripts for terminal tools.
source virtualenvwrapper.sh
. /usr/share/autojump/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
