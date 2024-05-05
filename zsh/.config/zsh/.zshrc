# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory

bindkey -e
export KEYTIMEOUT=1

# Tab completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Normal files to source
source "$ZDOTDIR/zsh-aliases"
source "$ZDOTDIR/zsh-prompt"

# Load custom settings if existent
[ -f "$HOME/.config/zsh/zsh-customize" ] && source "$HOME/.config/zsh/zsh-customize"

