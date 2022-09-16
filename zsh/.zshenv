export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"


# export MACOSX_DEPLOYMENT_TARGET=10.14
export KEYTIMEOUT=1
export CLICOLOR=1
export EDITOR=nvim
export _Z_DATA="$HOME/z-data"
export ITERM_24BIT=1
export DISABLE_AUTO_TITLE="true"

export PATH=/Users/$USER/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:~/bin
export BREW_PATH=$(brew --prefix)
export PATH=${PATH}:~/bin/nvim/bin

# If you come from bash you might have to change your $PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Python...amiright
export PATH="/usr/local/opt/python@3.7/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@2/bin:$PATH"

export PATH="$HOME/code/personal/lua-language-server/bin/macOS:$PATH"

function strip_diff_leading_symbols(){
    color_code_regex=$'(\x1B\\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K])'

        # simplify the unified patch diff header
        sed -E "s/^($color_code_regex)diff --git .*$//g" | \
               sed -E "s/^($color_code_regex)index .*$/\
  \1$(rule)/g" | \
               sed -E "s/^($color_code_regex)\+\+\+(.*)$/\1\+\+\+\5\\
  \1$(rule)/g" | \

        # actually strips the leading symbols
               sed -E "s/^($color_code_regex)[\+\-]/\1 /g"
}
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
