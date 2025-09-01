# These are REQUIRED for history to work in plain zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
# User configuration
export PATH=$HOME/.config/scripts:$PATH
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
# Remove any old completion dumps and reinitialize
autoload -Uz compinit
# Force a clean rebuild of completions
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi
# Load additional completion functions
autoload -Uz bashcompinit
bashcompinit
# Set up completion styles BEFORE defining custom completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # Smart case matching
zstyle ':completion:*' menu select                   # Menu selection
zstyle ':completion:*' completer _complete _approximate  # Error tolerance
# Fix `forward-word` and `backward-word`
autoload -Uz select-word-style
select-word-style normal
zstyle ':zle:*' word-style unspecified
# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# vim mode config
# ---------------
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[2 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup and for each new prompt
_fix_cursor() {
   echo -ne '\e[2 q'
}
precmd_functions+=(_fix_cursor)

# Allow ctrl-r to search history
bindkey '^r' history-incremental-search-backward
source $HOME/.zsh_aliases
source $HOME/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# ensure that above 3 are in ~/.zsh
# starship
eval "$(starship init zsh)"
