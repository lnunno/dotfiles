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
  esc/conda-zsh-completion

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

# Source local configurations. Use this to setup machine specific PATH, GOPATH, etc.
[ -f ~/.zshrc-local ] && source ~/.zshrc-local

[ -f virtualenvwrapper.sh ]  && source virtualenvwrapper.sh
[ -f /etc/profile.d/autojump.sh ]  && . /etc/profile.d/autojump.sh
[ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
