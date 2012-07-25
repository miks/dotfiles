#
# Colors
#
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NORMAL="\[\033[0m\]"


export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/Cellar/flex_sdk/4.6.0.23201/libexec/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export FLEX_HOME=/usr/local/Cellar/flex_sdk/4.6.0.23201/libexec
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export LC_ALL=en_US.UTF-8

alias vi="/usr/local/bin/mvim"
alias pull="git pull"
alias push="git push"
alias ci="git commit"
alias st="git status"
alias di="git diff"
alias office="ssh office"
alias irc="ssh -t irc screen -rdU"


[[ -s "/Users/miks/.rvm/scripts/rvm" ]] && source "/Users/miks/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#
# Prompt Setup
#
function parse_git_in_rebase {
  [[ -d .git/rebase-apply ]] && echo " REBASING"
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  branch=$(git branch 2> /dev/null | grep "*" | sed -e s/^..//g)
  if [[ -z ${branch} ]]; then
    return
  fi
  echo " ("${branch}$(parse_git_dirty)$(parse_git_in_rebase)")"
}

export PS1="$RED\u@\h:$GREEN\W$YELLOW\$(parse_git_branch)$NORMAL\$ " # Add git info to the prompt
