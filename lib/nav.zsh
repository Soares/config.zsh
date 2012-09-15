setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../..'

function mcd() {
	mkdir -p "$1" && cd "$1";
}

function chpwd() {
	emulate -L zsh
	ls
}
