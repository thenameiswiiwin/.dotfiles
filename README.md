# My Dev Environment Repo

Terminal-based development, productivity, and workflow efficiency.

## Table of contents

- [Install](#install)
- [Tools](#Tools)
- [Scripts](#scripts)
    - [Dev-Env Script](#dev-env)
      - [Usage](#usage-for-dev-env-script)
    - [Run Script](#run)
      - [Usage](#usage-for-run-script)
    - [Init Script](#init)
      - [Usage](#usage-for-init-script)
    - [Tmux-Sessionizer Script](#tmux-sessionizer)
      - [Usage](#usage-for-tmux-sessionizer)

## Install

**Note**: This install as if you have a new machine, and need everything setup.
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

## Tools

- [**Neovim**](https://neovim.io/) – A highly extensible, fast, and modern text editor that improves upon Vim with Lua-based configurations and built-in LSP support.

- [**Tmux**](https://github.com/tmux/tmux) – A terminal multiplexer that allows managing multiple terminal sessions within a single window, supporting session persistence and efficient workflows.

- [**Ghossty**](https://github.com/your-ghossty-repo) – A lightweight and customizable terminal setup that integrates with tmux, Neovim, and other CLI tools to enhance productivity.

- [**Lazygit**](https://github.com/jesseduffield/lazygit) – A simple and fast terminal UI for Git that provides an intuitive way to manage repositories, commits, and branches.

- macOS

    - [**Rectangle**](https://rectangleapp.com/) – A macOS window management tool that provides easy keyboard shortcuts for resizing and snapping windows for improved productivity.

    - [**Homebrew**](https://brew.sh/) – A package manager for macOS that simplifies software installation, dependency management, and system updates.

- Linux

    - [**i3 Window Manager**](https://i3wm.org/) – A lightweight tiling window manager for Linux that provides a highly configurable, keyboard-driven approach to workspace organization.

## Scripts

### Dev-Env

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

#### Usage for dev-env script

Executes the full development setup.

```bash
./dev-env
```

Run in dry-run mode to preview changes:

```bash
./dev-env --dry
```

---

### Run

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

#### Usage for run script

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

---

### Init

This script initializes and updates Git submodules, ensuring that dependencies are correctly checked out on their respective branches.

- Initializes and Updates Git Submodules
   - Runs `git submodule init` to prepare submodules.
   - Runs `git submodule update` to fetch and sync submodules.

- Checks Out the Branch for Submodules
   - Ensures `env/.config/nvim` is on the `main` branch.
   - Ensures `tmux-sessionizer` is on the `master` branch.

#### Usage for init script

```bash
./init
```

---

### Tmux-Sessionizer

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

#### Usage for tmux-sessionizer

Run the Script Manually

```bash
./tmux-sessionizer.sh
```

Or

Keyboard Shortcut (**Ctrl + f**)

Key binding setup is in `env/.zsh_profile` -> (`bindkey -s ^f "tmux-sessionizer\n"`)
