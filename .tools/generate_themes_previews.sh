#!/usr/bin/env bash
# This script generate all preview images for the themes

root="$(git rev-parse --show-toplevel)"
tools="$root/.tools"

# new kitty window, return its id
id=$(kitty @ new-window --title themes --window-type os --cwd "$tools")
# get system id of the new created window
sys_id=$(./windowid.swift "kitty" "themes")
# start bash without reading the profile nor the configuration
kitty @ send-text --match id:$id "/usr/local/bin/bash --noprofile --norc\n"

# save all preview in this directory
previews="$root/_previews"
mkdir "$previews"

find "$root/themes" -name "*.conf" -print0 | while read -d $'\0' -r theme; do
	preview_filename=$(basename ${theme%.*})
	kitty @ set-colors --match id:$id "$theme"
	kitty @ send-text --match id:$id "clear && ./color_table.sh\n"
	screencapture -l$sys_id "$previews/$preview_filename.png"
done
