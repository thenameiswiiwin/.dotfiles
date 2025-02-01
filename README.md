# dotfiles

========

## Install Brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Clone this Repo

```
git clone git@github.com:thenameiswiiwin/dotfiles-2.git ~/.dotfiles
```

## List Files

```
tree -a -I '.git|.DS_Store'
```

## Install Packages

```
brew bundle
```

### Symlink dotfiles

```
stow bin kitty lazygit nvim tmux zsh bat lf rectangle taskell keyboard git aliases
```
