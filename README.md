# Dotfiles Repo

Neovim, Ghostty, Tmux.

## Install

**Note**: This install is if you have a new machine, and need everything setup.
This script automates the setup process for your development environment.

```bash
curl -fsSL https://raw.githubusercontent.com/thenameiswiiwin/.dotfiles/main/resources/setup | bash
```

If you prefer downloading and running it manually:

```bash
curl -fsSL https://raw.githubusercontent.com/thenameiswiiwin/.dotfiles/main/resources/setup -o setup
chmod +x setup
./setup
```

## dev-env script

This script automates the setup of a development environment by copying configuration files and scripts to their appropriate locations.

- Ensures Required Environment Variables
  - Checks if `$DEV_ENV` (config directory) is set.
  - Uses `$XDG_CONFIG_HOME` (default: `~/.config`) for storing configurations.

- Supports Dry Run Mode (`--dry`)
  - Run the script with `--dry` to preview changes without applying them.

- Copies Configurations & Scripts
  - Updates `~/.config` and `~/.local` with necessary files.
  - Copies `.zshrc`, `.zsh_profile`, `.xprofile`, `tmux-sessionizer`, and other essential scripts.

- Cleans Up Old Files
  - Removes existing configurations before copying new ones.

#### Usage

Executes the full development setup.

```bash
./dev-env
```

Run in dry-run mode to preview changes:

```bash
./dev-env --dry
```

## run script

This script automates the execution of setup scripts located in the `runs` directory, applying optional filtering and a **dry-run mode** for testing changes before applying them.

- Ensures `$DEV_ENV` is Set
  - Exits if the required `DEV_ENV` environment variable is missing.

- Finds and Runs Executable Scripts
  - Searches for scripts inside the `runs/` directory and executes them.
  - Supports both macOS (`Darwin`) and Linux.

- Supports Filtering by Name
  - Accepts an optional argument to only run scripts matching a keyword.

- Dry Run Mode (`--dry`)
  - Allows previewing changes without executing scripts.

#### Usage

Execute all available scripts inside the `runs/` directory.

```bash
./run
```

Run with a keyword filter (only executes script that match the provided keyword).

```bash
./run {keyword}
```

Run in dry-run mode to preview changes:

```bash
./run --dry
```

## init script

This script initializes and updates Git submodules, ensuring that dependencies are correctly checked out on their respective branches.

- Initializes and Updates Git Submodules
   - Runs `git submodule init` to prepare submodules.
   - Runs `git submodule update` to fetch and sync submodules.

- Checks Out the Branch for Submodules
   - Ensures `env/.config/nvim` is on the `main` branch.
   - Ensures `tmux-sessionizer` is on the `master` branch.

## tmux-sessionizer

This script automates the creation, switching, and hydration of **tmux** sessions based on directories. It allows users to quickly jump between development environments using **fzf** for selection.

- Selects a directory to work in
   - If a directory is passed as an argument, it uses that.
   - Otherwise, it opens **fzf** (a fuzzy finder) to let you pick a directory from:
     - `~/`
     - `~/personal`
     - `~/dev/env/.config`

- Manages tmux sessions
   - If tmux is not running, it creates a new session.
   - If tmux is running:
     - It attaches to an existing session if found.
     - If no session exists, it creates one and switches to it.

- Hydrates the session
   - Runs `.tmux-sessionizer` (if present) in either the selected directory or `~/.tmux-sessionizer`, allowing project-specific configurations.

#### Usage

Run the Script Manually

```bash
./tmux-sessionizer.sh
```

Or

Keyboard Shortcut (**Ctrl + f**)

Key binding setup is in `env/.zsh_profile` -> (`bindkey -s ^f "tmux-sessionizer\n"`)
