export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=~/code/dotfiles/zsh_custom
ZSH_THEME="custom_agnoster"
plugins=(git ruby rails bundler)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RELEAF_DUMMY_DB_USERNAME=root
export RELEAF_DUMMY_DB_PASSWORD=
export RELEAF_DUMMY_DB_NAME=releaf_dummy

alias makepasswd="openssl rand -base64 12 |md5 |head -c12;echo"
alias vi="mvim"
alias st="git status"
alias grep="grep --color"
alias di="git diff"
alias ci="git commit"
alias office="ssh office"
alias irc="ssh -t irc screen -rdU"
