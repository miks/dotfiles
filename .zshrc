export PATH=$PATH:/usr/local/Caskroom/sparkle/1.16.0/bin
export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
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

alias makepasswd="pwgen -Bs 16 1"
alias vi="/Applications/MacVim.app/Contents/bin/mvim"
alias st="git status"
alias grep="grep --color"
alias di="git diff"
alias ci="git commit"
alias pl="git pull"
alias ck="git checkout"
alias irc="ssh -t irc screen -rdU"


setopt share_history

# allow cmd calls with []
# https://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then source '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then source '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"


kexec() {
  pod_name_content=$1
  namespace=$2
  remote_command=${3:-bash}

  pod_name=$(rancher kubectl get pods -n $namespace  | grep $pod_name_content | head -n 1  | cut -d ' ' -f 1)
  if [ "$pod_name"  = '' ]; then
    echo "No matching pod with name \"$pod_name_content\" within \"$namespace\" namespace"
  else
    rancher kubectl exec -ti -n $namespace $pod_name -- $remote_command
  fi
}

klogs() {
  pod_name_content=$1
  namespace=$2
  remote_command=${3:-bash}

  pod_name=$(rancher kubectl get pods -n $namespace  | grep $pod_name_content | head -n 1  | cut -d ' ' -f 1)
  if [ "$pod_name"  = '' ]; then
    echo "No matching pod with name \"$pod_name_content\" within \"$namespace\" namespace"
  else
    rancher kubectl logs --tail=10 -f -n $namespace $pod_name
  fi
}
