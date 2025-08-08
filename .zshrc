clear

if [[ -o interactive ]]; then
    fastfetch
fi

DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_COMPFIX="true"

autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

ZSH_THEME="spaceship"

zstyle ':omz:update' mode disabled

ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  brew
  colored-man-pages
  colorize
  common-aliases
  copyfile
  cp
  docker
  git
  golang
  iterm2
  tmux
  tmuxinator
  you-should-use
  zsh-autosuggestions
  zsh-bat
  fast-syntax-highlighting
)

zstyle :omz:plugins:iterm2 shell-integration yes
source $ZSH/oh-my-zsh.sh

# Autosuggest settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
ZSH_AUTOSUGGEST_USE_ASYNC=1

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Lazy load SSH agent
function _load_ssh_agent() {
    if [ -z "$SSH_AUTH_SOCK" ]; then
        eval "$(ssh-agent -s)" > /dev/null
        ssh-add ~/.ssh/id_github_sign_and_auth 2>/dev/null
    fi
}
autoload -U add-zsh-hook
add-zsh-hook precmd _load_ssh_agent

# dircolors support
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

# Source aliases
source ~/.zsh_aliases