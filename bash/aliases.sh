# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Make a pbcopy alias if xclip is around
if command -v xclip >/dev/null 2>&1; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
else
    echo "[WARN] xclip -- not installed"
fi

# Open alias
if command -v xdg-open >/dev/null 2>&1; then
    alias open='xdg-open'
else
    echo "[WARN] xdg-open -- not installed"
fi
