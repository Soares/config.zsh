# Autocompletion
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd' # Better killall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
unsetopt correct_all		# No correcting
setopt completeinword		# Complete from both ends
autoload select-word-style 	# Better 'word' usage (^W)
select-word-style shell
setopt extendedglob
unsetopt caseglob
autoload -Uz compinit
compinit
