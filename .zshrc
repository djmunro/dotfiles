# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="munro"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"


# Setup variables
export PATH="$HOME/local/bin:/usr/local/bin:$PATH"
export EDITOR="vim"

# Git variables
export GIT_AUTHOR_NAME="Munro"
export GIT_AUTHOR_EMAIL="munro.github@gmail.com"
export GIT_COMMITTER_NAME="Munro"
export GIT_COMMITTER_EMAIL="munro.github@gmail.com"

# Hg varialbes
export HGUSER="Munro"
export EMAIL="munro.github@gmail.com"


# Things not quite ready for the year 3000:
# * Node.js
if [ -f "`which python2`" ]; then
    export PYTHON="python2"
fi

if [ -f "$HOME/.nvm/nvm.sh" ]; then
    source ~/.nvm/nvm.sh
    export PATH="`npm bin`:$PATH"
fi

if [ -f "$HOME/.localrc" ]; then
    source ~/.localrc
fi


# Change font size
setfontsize () {
    printf '\e]710;%s%s\007' "xft:Ubuntu Mono-" $1
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django deb node npm pip redis-cli nyan)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
