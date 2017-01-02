# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR='vim'

# Antigen configuration
if [[ ! -a ~/antigen.zsh ]]; then
    # Download the antigen script if it doesn't exist.
    curl https://cdn.rawgit.com/zsh-users/antigen/v1.3.2/bin/antigen.zsh > ~/antigen.zsh
fi
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

  # Python bundles
  pip
  autopep8
  httpie
  #virtualenv
  virtualenvwrapper

  # Rust bundles
  rust
  cargo

  # Golang bundles
  golang

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
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export PIP_CONFIG_FILE=~/pip.conf
source virtualenvwrapper.sh

# This was generated from "pip completion --zsh"
# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

. /usr/share/autojump/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

