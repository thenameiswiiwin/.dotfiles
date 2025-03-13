#!/usr/bin/env zsh

eval "$(starship init zsh)"

autoload -Uz compinit
zstyle ':completion:*' menu select
if [[ -f "$HOME/.zcompdump" ]]; then
    compinit -d "$HOME/.zcompdump"
else
    compinit
fi

source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7C6F64"

[[ -s "$HOME/.bun/_bun" ]] && source "$HOME/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="$HOME/.turso:$PATH"

unsetopt beep                # Disable beeping sound.
unsetopt correct             # Disable autocorrection.
setopt hist_ignore_all_dups  # Ignore duplicate history entries.
setopt share_history         # Share history across sessions.
setopt no_flow_control       # Disable flow control for performance.

[[ -f "$HOME/.zsh_profile" ]] && source "$HOME/.zsh_profile"
