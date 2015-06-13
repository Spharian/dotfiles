# ZSH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spharian"
DISABLE_LS_COLORS="true"

plugins=(git z)

source $ZSH/oh-my-zsh.sh

# Locales
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# aliases
if [ -e "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi

# Install Pygments (cat syntax highlighter) if needed
[[ ! -f /usr/local/bin/pygmentize ]] && sudo easy_install Pygments

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PostgreSQL
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

# Use Mamp Pro's PHP version
export PATH="/Applications/MAMP/bin/php/php5.6.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

ulimit -n 2560
