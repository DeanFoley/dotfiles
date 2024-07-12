# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Zsh
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export EDITOR=nano
export VISUAL="$EDITOR"

# Tmux
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES

# GPG
export GPG_TTY=$(tty)

# asdf
export ASDF_NODEJS_LEGACY_FILE_DYNAMIC_STRATEGY=latest_available
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

# PSql
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# dircolors
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
