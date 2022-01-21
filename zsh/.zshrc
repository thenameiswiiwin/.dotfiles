# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Export nvm completion settings for lukechilds/zsh-nvm plugin
# Note: This must be exported before the plugin is bundled
export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

# Source Plugins
source ~/.zsh_plugins.sh

# Source Aliases
source ~/.aliases

source ~/.zshenv

# DIRCOLORS (MacOS)
export CLICOLOR=1
export LSCOLORS=FxFhcxdxbxegedabagacad

export GIT_EDITOR='vim'
export VISUAL='vim'
export EDITOR='vim'
export TMUXP_CONFIGDIR=$HOME/.config/tmuxp
export DISABLE_AUTO_TITLE='true'
export PATH=/Users/$USER/bin:$PATH
export TERM=xterm-256color

# FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --border --margin=1 --padding=1"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export BAT_THEME="gruvbox-dark"

alias luamake=/Users/huy/code/personal/lua-language-server/3rd/luamake/luamake
