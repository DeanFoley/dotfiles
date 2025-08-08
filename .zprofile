export TERM='xterm-256color'

# Homebrew
export HOMEBREW_BAT=1
export HOMEBREW_COLOR=1
export HOMEBREW_DISPLAY_INSTALL_TIMES=1
export HOMEBREW_DOWNLOAD_CONCURRENCY=auto
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1

export DOTNET_CLI_TELEMETRY_OPTOUT=1

export POWERSHELL_TELEMETRY_OPTOUT=1

export GOPATH=$HOME/Code
export PATH="$PATH:$GOPATH/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"
