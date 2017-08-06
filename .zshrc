export PATH=$PATH:/usr/local/Caskroom/sparkle/1.16.0/bin
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=~/code/dotfiles/zsh_custom
export DEFAULT_USER=miks
ZSH_THEME="agnoster"
plugins=(git ruby bundler virtualenv-zsh)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RELEAF_DUMMY_DB_USERNAME=root
export RELEAF_DUMMY_DB_PASSWORD=
export RELEAF_DUMMY_DB_NAME=releaf_dummy
export ANDROID_HOME=~/Library/Android/sdk

alias makepasswd="apg -m 16 -n 1"
alias vi="mvim"
alias st="git status"
alias grep="grep --color"
alias di="git diff"
alias ci="git commit"
alias irc="ssh -t irc screen -rdU"
