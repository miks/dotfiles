export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

export MAGICK_HOME="$HOME/ImageMagick-6.7.3"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/:/usr/local/mysql/lib/"

alias vi=mvim
alias office="ssh office"
alias st="git status"
alias ci="git commit"
alias di="git diff"
alias push="git push"
alias pull="git pull"
alias irc="ssh -t irc screen -rdU"


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
