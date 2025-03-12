eval "$(starship init zsh)"

autoload -Uz compinit
zstyle ':completion:*' menu select
if [[ -f ~/.zcompdump ]]; then
    compinit -d ~/.zcompdump
else
    compinit
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7C6F64"

# bun completions
if [[ -s "$HOME/.bun/_bun" ]]; then
    source "$HOME/.bun/_bun"
fi

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Turso
export PATH="$HOME/.turso:$PATH"

unsetopt beep
unsetopt correct
setopt hist_ignore_all_dups
setopt share_history
setopt no_flow_control

[[ -f ~/.zsh_profile ]] && source ~/.zsh_profile
