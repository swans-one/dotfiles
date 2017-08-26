function v {
    source "~/.env/$(basename $(pwd))/bin/activate"
}

function mkv {
    pyvenv "~/.env/$(basename $(pwd))"
}
