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


##
## NVM configuration
##

export NVM_DIR="$HOME/.nvm"
if [ $NVM_DIR ]; then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
else
    echo "[WARN] nvm -- not installed"
fi


##
## Setup direnv (https://direnv.net/)
##
if command -v direnv  &> /dev/null
then
    eval "$(direnv hook bash)"
else
    echo "[WARN] direnv -- not installed"
fi
