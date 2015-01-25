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

# Use Mamp Pro's PHP version
export PATH="/Applications/MAMP/bin/php/php5.6.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Install Pygments (cat syntax highlighter) if needed
[[ ! -f /usr/local/bin/pygmentize ]] && sudo easy_install Pygments
