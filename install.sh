# Ask for the administrator password upfront
sudo -v

# Install Homebrew
brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
	echo "Homebrew is installed"
else
	echo "Homebrew is not installed"
	echo "Homebrew requires osx command lines tools"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brew Packages
formulae=(
"zsh"
"antibody"
"git"
"gh"
"node"
"nvm"
"neovim"
"tmux"
"stow"
"yarn"
"fzf"
"treesitter"
"tldr"
"ripgrep"
"fd"
"bat"
"direnv"
"exa"
"tree"
)

# Install Packages
for i in "${formulae[@]}"
do
  brew install $i
done

# Stow
stow aliases antibody bin git kitty nvim osx phpactor tmux zsh

# Add Zsh To Valid Login SHells
command -v zsh | sudo tee -a /etc/shells

# Changing To Zsh As Default Shell
chsh -s $(which zsh) $USER

# Bundle Zsh Plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install Neovim Plugins
nvim --headless +PlugInstall +qall
