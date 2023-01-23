# ~/.bashrc: executed for non-login shells. This version is inspired
# by / modified from the version at /etc/skel/.bashrc. A bunch of the
# functionality is broken into other files.
#
# Note, .bash_profile, executed for login shells, simply sources this
# file.
#
# Two main sections:
#   1) Main Config :: System & shell related stuff
#   2) My Defintions :: Functions, aliases, etc



### Main Config ###
###################

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

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


### My Definitions ###
######################

source ~/.myconfig/bash/config.sh
source ~/.myconfig/bash/aliases.sh
source ~/.myconfig/bash/functions.sh

## File not kept in source control
if [ -f ~/.environment ]; then
   source ~/.environment
fi
