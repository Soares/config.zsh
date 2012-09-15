if which tmux 2>&1 >/dev/null; then
	local SESSION_NAME="So8res"

	if [ $(tmux list-sessions 2>/dev/null | grep -c $SESSION_NAME) -eq 0 ]; then
		tmux -f $XDG_CONFIG_HOME/tmux/config new-session -s $SESSION_NAME -n main -d
	fi

	if [[ $TERM == $GUI_TERM; ]]; then
		if [ -z $TMUX ]; then
			tmux attach-session -t $SESSION_NAME -d
		fi
	fi
fi
