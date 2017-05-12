
function mkvirtualenv {
	typeset env_name="$1"
	(
    if [ -f ~/.local/bin/virtualenv ]; then
      cd $VENV_DIR && ~/.local/bin/virtualenv $env_name
    else
      cd $VENV_DIR && virtualenv $env_name
    fi
	)
	workon $env_name
}


function lsvirtualenv {
	# Lame!
	ls $VENV_DIR
}


function workon {
	typeset env_name="$1"
	if [ "$env_name" = "" ]
	then
		lsvirtualenv -b
		return 1
	fi
	activate="$VENV_DIR/$env_name/bin/activate"
	if [ ! -f "$activate" ]
	then
		echo "ERROR: Environment '$VENV_DIR/$env_name' does not contain an activate script." >&2
		return 1
	fi

	source "$activate"
}

