eval "$(starship init zsh)"

autoload -Uz compinit && compinit -C
zstyle ':completion:*' menu select

if [[ -f "$HOME/.zcompdump" ]]; then
    compinit -d "$HOME/.zcompdump"
else
    compinit
fi

source ~/.zprofile

if [[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7C6F64"

if [[ -s "$HOME/.bun/_bun" ]]; then
    source "$HOME/.bun/_bun"
fi

if [[ -s "$HOME/.fzf.zsh" ]]; then
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
fi

# History settings
HISTSIZE=50000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"
setopt hist_ignore_all_dups
setopt share_history
setopt appendhistory
setopt extended_history

# Optimize shell behavior
unsetopt beep
unsetopt correct
setopt no_flow_control

if [[ -z "$TMUX" ]]; then
    alias tmux='command /usr/local/bin/tmux -2 -2'
fi

# Aliases
alias v='nvim'
alias vim='nvim'
alias t='tmux'
alias gt='NODE_OPTIONS="--no-deprecation" gt'
alias dsclean='sudo find / -name ".DS_Store" -exec rm -v {} \;'
alias flush='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder && echo "DNS cache flushed"'
alias port='sudo lsof -i'
alias ps='ps aux | grep'
alias kill_port=findandkill
alias bu='brew cleanup && brew update && brew upgrade && brew cleanup && brew doctor'
alias bo='brew outdated'

[ -f "$HOME/.php_profile" ] && source "$HOME/.php_profile"
