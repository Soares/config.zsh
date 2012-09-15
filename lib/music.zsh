if test -n `which mpd`; then
	if ps -u nate | grep mpd > /dev/null; then
	else
		mpd $XDG_CONFIG_HOME/mpd/config 2> /dev/null
	fi
fi
