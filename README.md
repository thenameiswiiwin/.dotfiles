# Thenameiswiiwin's Dotfile

Neovim, Kitty, Oh-My-Zsh, Stow, Tmux, Antibody, ...

## Install

Note this install is if you have a new machine, and need everything setup.
For that, I sugguest

```
curl https://cdn.rawgit.com/thenameiswiiwin/dotfiles/main/install.sh | sh
```

If you already have things like git, homebrew,node etc installed, then here have a cookie and sit back.
You should just be able to just run these few lines.

```
brew tap thoughtbot/formulae
brew install stow
git clone https://github.com/thenameiswiiwin/dotfiles.git ~/dotfiles
cd $HOME/dotfiles
stow aliases antibody bin git kitty nvim osx tmux zsh
```
