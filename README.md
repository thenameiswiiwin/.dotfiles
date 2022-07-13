# Thenameiswiiwin's Dotfile

Neovim, Kitty, Oh-My-Zsh, Stow, Tmux, Antibody, ...

## Install

```
curl https://cdn.rawgit.com/thenameiswiiwin/dotfiles/main/install.sh | sh
```

## List Files

```
tree -a -I '.git|.DS_Store'
```

## Install Packages

```
brew bundle
```

## Symlink Dotfiles

```
cd ~/.dotfiles
stow aliases antibody bash bin git kitty nvim prompt tmux vim zsh
```
