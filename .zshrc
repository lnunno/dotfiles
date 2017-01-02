# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR='vim'

# Antigen configuration
source ~/antigen.zsh
antigen use oh-my-zsh

# Install a list of antigen bundles
antigen bundles <<EOBUNDLES
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions
  zsh-users/zsh-autosuggestions
  git
  git-prompt
  mvn
  autojump

  # Custom aliases
  lnunno/dotfiles alias.d
EOBUNDLES

# Set the antigen theme
antigen theme lnunno/dotfiles zsh-themes/lucas

# Apply all Antigen configuration
antigen apply

export GOPATH=~/projects/go
export PATH=/opt/VSCode-linux-x64:~/bin:~/scripts:$GOPATH/bin:$PATH

# Source scripts for terminal tools.
source virtualenvwrapper.sh
. /usr/share/autojump/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
