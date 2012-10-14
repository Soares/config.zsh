if which tmux 2>&1 >/dev/null; then
	if [[ $TERM == $GUI_TERM; ]]; then
		tmux attach || tmux new
	fi
fi
