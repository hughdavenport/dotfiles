function mkdircd {
    mkdir -p -- "$1"
    cd -P -- "$1"
}
