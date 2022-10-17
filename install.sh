# Ask for the administrator password upfront
sudo -v

# Instal Homebrew
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
	echo "Homebrew is installed"
else
	echo "Homebrew is not instaled"
	echo "Homebrew requires os command lines tools"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brew packages
formulae=(
"zsh"
"antibody"
"git"
"gh"
"nvm"
"node"
"neovim"
"tmux"
"stow"
"yarn"
"fzf"
"fd"
"tldr"
"treesitter"
"lulu"
"ripgrep"
"bat"
"exa"
"lua-language-server"
)

# Applications
casks=(
"brave-browser"
"kitty"
"rectangle"
"postman"
"figma"
)

# Install Packages
for i in "${formulae[@]}"
do
	brew install $i
done

# Install Applications
for i in "${casks[@]}"
do
	brew install --casks $i
done

# Nerd Fonts
brew tap homebrew/cask-fonts && brew install --cask font-victor-mono-nerd-font

# Stow
stow aliases antibody bin fonts git kitty nvim tmux vim zsh

# Add Zsh to Valid Login Shells
command -v zsh | sudo tee -a /etc/shells

# Changing Zsh As Default Shell
chsh -s $(which zsh) $USER

# Tmux
brew install reattach-to-user-namespace

# Bundle Zsh Plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install Neovim Plugins
nvim --headless +PlugInstall +qall

# LSP
yarn global add bash-language-server typescript typescript-language-server vscode-langservers-extracted @volar/vue-language-server vim-language-server @tailwindcss/language-server emmet-ls kill-port

## sumneko lua-language-server
brew install lua-language-server
