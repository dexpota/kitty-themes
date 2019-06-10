#!/usr/bin/env bash
# This script generate all preview images for the themes

root="$(git rev-parse --show-toplevel)"
tools="$root/.tools"

# new kitty window, return its id
id=$(kitty @ new-window --title themes --window-type os --cwd "$tools")
# get system id of the new created window
sys_id=$(./windowid.swift "kitty" "themes")
# start bash without reading the profile nor the configuration
kitty @ send-text --match id:$id "/usr/bin/env bash --noprofile --norc\n"

# save all preview in this directory
previews="$root/_previews"
if [ ! -d "$previews" ]; then
	mkdir "$previews"
fi

# read theme path from args
theme=$1

preview_filename=$(basename ${theme%.*})
kitty @ set-colors --match id:$id "$theme"
kitty @ send-text --match id:$id "clear && ./color_table.sh\n"
screencapture -l$sys_id "$previews/$preview_filename.png"
