alias v="vim"
alias abs="realpath"
alias abspath="realpath"

cdf(){
    cd $(dirname $1)
}

cdfile(){ cdf $1}
