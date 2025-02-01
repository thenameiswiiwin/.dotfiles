# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/exa"
plug "zap-zsh/vim"
plug "wintermi/zsh-fnm"

alias dockerps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}'"

function runr() { 
  jq -r '.scripts | keys[]' package.json |
    fzf \
      --header="Select a script to run…" \
      --prompt="󰎙 Script  " \
      --preview "jq -r '.scripts | { {1} } | .[]' package.json" \
      --preview-window="down,1,border-horizontal" \
      --height="50%" \
      --layout="reverse" | \
    xargs -o npm run
}

source ~/.aliases

# https://gist.github.com/reegnz/b9e40993d410b75c2d866441add2cb55
function jqf() {
  echo "" | \
    fzf \
      --disabled \
      --print-query
      --preview "jq -C {q} $1" \
      --prompt="Query  " \
      --header="Interactive jq playground" \
      --preview-window="down:90"
}
function tzf() {
  tz -list | fzf -m | awk '{print $4}' | tr "\n" ";" | xargs -I {} sh -c "TZ_LIST='{}' tz"
}
function ghpr() {
  GH_FORCE_TTY=100% gh pr list | fzf --query "$1" --ansi --preview 'GH_FORCE_TTY=100% gh pr view {1}' --preview-window down --header-lines 3 | awk '{print $1}' | xargs gh pr checkout -f  
}
function ghgist() {
  GH_FORCE_TTY=100% gh gist list --limit 20 | fzf --ansi --preview 'GH_FORCE_TTY=100% gh gist view {1}' --preview-window down | awk '{print $1}' | xargs gh gist edit
}

# git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/AstroNvim
# git clone git@github.com:nvim-lua/kickstart.nvim.git ~/.config/kickstart
# git clone https://github.com/NvChad/NvChad ~/.config/NvChad --depth 1
# git clone https://github.com/LazyVim/starter ~/.config/LazyVim
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
function nvims() {
  items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}
bindkey -s "^b" "nvims\n"

local dev_commands=(
	'tz' 'task' 'watson' 'archey' 'ncdu'
	'fkill' 'lazydocker' 'ntl' 'ranger'
	'speed-test' 'serve' 'vtop' 'htop' 'btop'
	'lazygit' 'gitui' 'tig' 'tldr'
  'calcurse' 'cmatrix' 'cowsay' 'exa' 'fd' 'dooit' 'taskell' 'gh' 'gitui' 'hyperfine' 'lolcat'
  'mc' 'navi' 'neofetch' 'newsboat' 'nnn' 'tree' 'vhs' 'vifm' 'zellij' 'tmux' 'zoxide'
)
alias dev='printf "%s\n" "${dev_commands[@]}" | fzf --height 20% --header Commands | bash'

bindkey -s "^f" "tmux-sessionizer\n"
# bindkey -s ^f "zellij-switch\n"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -r ~/private/.zshrc ] && source ~/private/.zshrc

# Load and initialise completion system
autoload -Uz compinit
compinit

# eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/local/bin/brew shellenv)"
eval "$(fnm env --use-on-cd --log-level=quiet)"
eval "$(zoxide init zsh)"
# eval "$(github-copilot-cli alias -- "$0")"
