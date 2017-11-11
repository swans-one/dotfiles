function v {
    source "$HOME/.env/$(basename $(pwd))/bin/activate"
}

function mkv {
    pyvenv "$HOME/.env/$(basename $(pwd))"
}
