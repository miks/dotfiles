export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git ruby rails bundler)

export PATH="/Users/miks/.rvm/gems/ruby-2.1.2/bin:/Users/miks/.rvm/gems/ruby-2.1.2@global/bin:/Users/miks/.rvm/rubies/ruby-2.1.2/bin:/opt/local/bin:/opt/local/sbin:/Users/miks/Library/Python/2.7/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/Cellar/go/1.2/libexec/bin:/Users/miks/.rvm/bin"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RELEAF_DUMMY_DB_USERNAME=root
export RELEAF_DUMMY_DB_PASSWORD=
export RELEAF_DUMMY_DB_NAME=releaf_dummy

alias makepasswd="openssl rand -base64 12 |md5 |head -c12;echo"
alias vi="/usr/local/bin/mvim"
alias st="git status"
alias grep="grep --color"
alias di="git diff"
alias ci="git commit"
alias office="ssh office"
alias irc="ssh -t irc screen -rdU"
