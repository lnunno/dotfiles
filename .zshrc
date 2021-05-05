# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR='vim'

antigen_script=~/antigen/antigen.zsh

# Antigen configuration
if [[ ! -a ${antigen_script} ]]; then
    # Download the antigen script if it doesn't exist.
    git clone https://github.com/zsh-users/antigen.git ~/antigen
fi
source "${antigen_script}"
antigen use oh-my-zsh

# Install a list of antigen bundles
antigen bundles <<EOBUNDLES
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions

  # Due to bug: https://github.com/zsh-users/zsh-autosuggestions/issues/296
  zsh-users/zsh-autosuggestions@v0.4.0

  git
  git-prompt
  autojump
  terraform

  # Package managers
  mvn
  yum
  debian

  # Python bundles
  pip
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
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -s /usr/share/doc/fzf/examples/key-bindings.zsh ] && . /usr/share/doc/fzf/examples/key-bindings.zsh
