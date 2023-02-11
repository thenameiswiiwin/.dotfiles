export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# export MACOSX_DEPLOYMENT_TARGET=10.14
export KEYTIMEOUT=1
export CLICOLOR=1
export EDITOR=nvim
export _Z_DATA="$HOME/z-data"
export ITERM_24BIT=1
export DISABLE_AUTO_TITLE="true"

export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:~/bin
export BREW_PATH=$(brew --prefix)
export PATH=${PATH}:~/bin/nvim/bin

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@2/bin:$PATH"

# If you come from bash you might have to change your $PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Python...amiright
export PATH="/usr/local/opt/python@3.7/bin:$PATH"

# Java setup
# export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
# export JAVA_HOME=$JAVA_8_HOME
export JAVA_HOME=$JAVA_11_HOME
export GRADLE_HOME=$BREW_PATH

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
