# ZSH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_LS_COLORS="true"

plugins=(git)

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

ulimit -n 2560
