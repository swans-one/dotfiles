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
## Xterm Colors & Prompts
##

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# enable color support of ls and other commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


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
