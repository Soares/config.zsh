function light { set_theme "Solarized Light" }
function dark { set_theme "Solarized Dark" }


function set_theme {
	if [[ $SYSTEM == "MAC" ]]; then
		osascript -e "tell application \"Terminal\" to set current settings of window 1 to settings set \"$1\""
	fi

	if [[ $SYSTEM == "LINUX" ]]; then
		TERMINAL_THEME=`cat $XDG_CACHE_HOME/terminal_theme`
		if [[ $1 == $TERMINAL_THEME ]]; then; return; fi

		# Reload the x resources only if necessary.
		if [[ $1 == "Solarized Light" ]]; then
			xrdb -DSOLARIZED_LIGHT -merge $XDG_CONFIG_HOME/X11/resources
		else
			xrdb -DSOLARIZED_DARK -merge $XDG_CONFIG_HOME/X11/resources
		fi

		echo $1 > $XDG_CACHE_DIR/terminal_theme
		killall urxvt
	fi
}


if [[ $SYSTEM == "LINUX" ]]; then
	TERMINAL_THEME=`cat $XDG_CACHE_HOME/terminal_theme`
	if [[ $TERMINAL_THEME == "Solarized Light" ]]; then
		eval `dircolors $XDG_CONFIG_HOME/dircolors/ansi-light`
	else
		eval `dircolors $XDG_CONFIG_HOME/dircolors/256dark`
	fi
fi
