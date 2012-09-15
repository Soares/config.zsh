setopt DVORAK autocd beep extendedglob nomatch interactivecomments long_list_jobs
stty -ixon

# smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# file rename magic
bindkey "^[m" copy-prev-shell-word

export CCACHE_DIR=$XDG_CACHE_HOME/ccache
export GIT_CONFIG_FILE=$XDG_CONFIG_HOME/git/config
export GIT_EDITOR=vim
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg
export GREP_COLOR='1;32'
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=$LANG
export LESSHISTFILE=$XDG_DATA_HOME/less/history
export PAGER=less
