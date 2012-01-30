export PATH=/Users/miks/Library/flex_sdk_4/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=~/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export MAGICK_HOME="$HOME/ImageMagick-6.7.4"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"


export PATH=/opt/local/bin:/opt/local/sbin:$PATH

alias vi="/usr/local/bin/mvim --remote-tab-silent"
alias pull="git pull"
alias push="git push"
alias ci="git commit"
alias st="git status"
alias di="git diff"
alias office="ssh office"
alias irc="ssh -t irc screen -rdU"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
