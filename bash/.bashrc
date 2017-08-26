# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

source ~/.myconfig/bash/config.sh
source ~/.myconfig/bash/aliases.sh
source ~/.myconfig/bash/functions.sh

if [ -f ~/.environment ]; then
   source ~/.environment
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
