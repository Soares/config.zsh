alias browse='nautilus --browser .'
alias ...='cd ../..'
alias -- -='cd -'
alias history='fc -l 1'

export IGNORED_FILES='*.pyc'
alias ls="ls --color --hide='$IGNORED_FILES'"
alias ll="ls -l --color --hide='$IGNORED_FILES'"
alias lb="ls --hide='$IGNORED_FILES'"

alias sim="sudoedit"
alias o="gnome-open"
alias so='source'
alias mkdir='mkdir -p'
alias less='less -R'

alias gs='git status --short'
alias gcd="cd ./$(git rev-parse --show-cdup 2> /dev/null)"

alias afind='ack -il'
alias qfind='find . -iname'

alias get="sudo apt-get install"
alias canget="apt-cache search"
alias clean="deborphan | xargs sudo apt-get remove -y --purge"

alias bbuild="bookbuilder -a \"Nate Soares\""
alias doc="libreoffice"
alias ebook="calibre"
alias music="ncmpcpp"
alias pdf="evince"
alias song="cvlc 2>/dev/null&"

local tmux="tmux -f $XDG_CONFIG_HOME/tmux/config"
local vim="vim -u $XDG_CONFIG_HOME/vim/vim.rc"
alias tmux=$tmux
alias vim=$vim
