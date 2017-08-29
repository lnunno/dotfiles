alias lh='ls -lh'
alias v='vim'
alias abs='realpath'
alias abspath='realpath'
alias mysudo='sudo env PATH=$PATH'

cdf(){ cd $(dirname $1) }
cdfile(){ cdf $1}

# See: http://stackoverflow.com/questions/749544/pipe-to-from-the-clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'
