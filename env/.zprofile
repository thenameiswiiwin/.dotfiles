export XDG_CONFIG_HOME=$HOME/.config

VIM="nvim"
export GIT_EDITOR=$VIM

export PERSONAL=$XDG_CONFIG_HOME/personal
export DEV_ENV=$HOME/dev
DEV_ENV_HOME="$HOME/personal/dev"

export PHP_INI_SCAN_DIR="/usr/local/etc/php/8.4"
export PATH="/usr/local/opt/rustup/bin:$PATH"

if [[ -d $PERSONAL ]]; then
    for i in $(find -L "$PERSONAL" -type f); do
        source "$i"
    done
fi

if command -v brew &>/dev/null; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

addToPathFront() {
    if [[ ! -z "$2" ]] || [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

addToPathFront "/usr/local/bin"
addToPathFront "/usr/local/sbin"
addToPathFront "/usr/local/opt/php/sbin"
addToPathFront "$HOME/.cargo/bin"
addToPathFront "/usr/local/opt/rustup/bin"
addToPathFront "$HOME/.local/bin"
addToPathFront "$HOME/opt/lua@5.1/bin"
addToPathFront "/usr/local/lib/node_modules"
addToPathFront "$HOME/.npm-global/bin"

bindkey -s ^f "tmux-sessionizer\n"

catr() {
    tail -n "+$1" $3 | head -n "$(($2 - $1 + 1))"
}

cat1Line() {
    cat $1 | tr -d "\n"
}

dev_env() {
    echo "DEV_ENV is set to: $DEV_ENV"
}
