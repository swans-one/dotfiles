function v {
    source "$HOME/.env/$(basename $(pwd))/bin/activate"
}

function mkv {
    python3 -m venv "$HOME/.env/$(basename $(pwd))"
}

function org2pdf {
    if command -v pandoc >/dev/null 2>&1; then
        pandoc -f org -o ${2:-output.pdf} $1
    else
        echo "[ERR] pandoc not installed"
    fi
}

function fixaudio {
    systemctl --user restart pulseaudio
}
