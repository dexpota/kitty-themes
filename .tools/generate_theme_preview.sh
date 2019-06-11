#!/usr/bin/env bash
# This script generate all preview images for the themes


function capture_linux() {
	local title="$1"
	local output="$2"
	import -frame -window "$title" "$output"
}

function capture_osx() {
	local title="$1"
	local output="$2"
	# get system id of the new created window
	sys_id=$(./windowid.swift "kitty" "$title")
	screencapture -l$sys_id "$output" 
}


if [[ "$OSTYPE" == "linux-gnu" ]]; then
        capture="capture_linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	capture="capture_osx"
fi


root="$(git rev-parse --show-toplevel)"
tools="$root/.tools"

# new kitty window, return its id
id=$(kitty @ new-window --title themes --window-type os --cwd "$tools")
# start bash without reading the profile nor the configuration
kitty @ send-text --match id:$id "/usr/bin/env bash --noprofile --norc\n"

# save all preview in this directory
previews="$root/_previews"
if [ ! -d "$previews" ]; then
	mkdir "$previews"
fi

# read theme path from args
theme=$1
lockfile=$(mktemp)
preview_filename=$(basename ${theme%.*})
kitty @ set-colors --match id:$id "$theme"
kitty @ send-text --match id:$id "clear && ./color_table.sh && rm \"$lockfile\"\n"

fswatch -1 -e Removed "$lockfile" > /dev/null && $($capture themes "$previews/$preview_filename.png")
