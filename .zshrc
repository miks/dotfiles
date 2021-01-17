ZSH_DISABLE_COMPFIX=true
export PATH=$PATH:/usr/local/Caskroom/sparkle/1.16.0/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/sbin:$PATH"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER=miks
ZSH_THEME="agnoster"
plugins=(git ruby bundler kubectl)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RELEAF_DUMMY_DB_USERNAME=root
export RELEAF_DUMMY_DB_PASSWORD=
export RELEAF_DUMMY_DB_NAME=releaf_dummy
export FLASK_ENV=development
export COMPOSER_MEMORY_LIMIT=-1
export CLOUDSDK_PYTHON=/usr/bin/python2.7

alias makepasswd="pwgen -Bs 16 1"
alias vi="/Applications/MacVim.app/Contents/bin/mvim"
alias st="git status"
alias grep="grep --color"
alias di="git diff"
alias dic="git diff --cached"
alias ci="git commit"
alias pl="git pull"
alias ad="git add"
alias ck="git checkout"
alias irc="ssh -t irc screen -rdU"

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/qt5/lib/pkgconfig

setopt share_history
unsetopt AUTO_REMOVE_SLASH

# allow cmd calls with []
# https://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

alias python=/usr/local/bin/python3.9

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/miks/code/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/miks/code/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/miks/code/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/miks/code/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
