# These aliases use ripgrep (rg) and fuzzy find (fzf), so install those first before using these!

# fd - cd to selected directory
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune \
                    -o -type d -print 2> /dev/null | fzf +m) &&
    cd "$dir"
}

rgfiles() {
    rg --files
}

# Find a file from the root of your git repo
fgit() {
    local gitdir
    gitdir="$(git rev-parse --show-toplevel)"
    rgfiles | fzf
}

# Get the relative paths of two files interactively from the root of your repo with fzf
get-relative-path() {
    local first=$(fgit | xargs realpath)
    local second=$(fgit | xargs realpath)
    realpath --relative-to=${first} ${second}
}
