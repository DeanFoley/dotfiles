clear

DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

if [[ -o interactive ]]; then
    fastfetch
fi

export TERM='xterm-256color'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 3

ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(
  asdf
  aws
  brew
  colored-man-pages
  colorize
  copyfile
  cp
  docker
  git
  golang
  kubectl
  npm
  tmux
  tmuxinator
  you-should-use
  zsh-autosuggestions
  zsh-syntax-highlighting
)

plugins+=(nvm)
# add the following before Oh My Zsh is sourced
zstyle ':omz:plugins:nvm' lazy yes

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias zshconfig="code ~/.zshrc"
alias tmuxconf="code ~/.tmux.conf"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# dircolors support
alias ls="gls --color=always"
test -r ~/.dircolors && eval $(gdircolors ~/.dircolors/bliss.dircolors)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Tmux
setopt hist_ignore_dups
setopt hist_ignore_space

# Thefuck
eval $(thefuck --alias)

# Z
. /opt/homebrew/etc/profile.d/z.sh

# fzf
source <(fzf --zsh)