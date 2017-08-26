##
## Bash History
##

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# History size
HISTSIZE=1000
HISTFILESIZE=2000


##
## Shell Options
##

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Enable ** globstars
shopt -s globstar


##
## Setting Up the Prompt
##

# Do Something Here
