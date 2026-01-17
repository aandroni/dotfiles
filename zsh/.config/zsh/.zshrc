# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY # Between terminals/tabs

bindkey -e # Emacs mode
export KEYTIMEOUT=1 # Fast key response (useful for vim mode)

# Tab completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

# Load custom settings if present
[ -f "$HOME/.config/zsh/zsh-customize" ] && source "$HOME/.config/zsh/zsh-customize"

# Aliases
source "$ZDOTDIR/zsh-aliases"

# Starship prompt
eval "$(starship init zsh)"

