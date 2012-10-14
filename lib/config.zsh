setopt dvorak autocd beep extendedglob nomatch interactivecomments
setopt prompt_subst long_list_jobs multios cdablevars
stty -ixon

# prompt coloring
autoload colors
colors

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

# History Configuration
HISTFILE=$XDG_DATA_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history extended_history hist_expire_dups_first
setopt hist_ignore_dups hist_ignore_space hist_verify inc_append_history
setopt inc_append_history
# Mildly controversial:
setopt share_history
