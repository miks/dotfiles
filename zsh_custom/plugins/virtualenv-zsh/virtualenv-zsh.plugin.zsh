# When the current working directory changes, run a method that checks for a .virtualenv directory, then sources it.

autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -d .virtualenv && -r .virtualenv ]]; then
       source .virtualenv/bin/activate
     fi
}
add-zsh-hook chpwd load-local-conf
