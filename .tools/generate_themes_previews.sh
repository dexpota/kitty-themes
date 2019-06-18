#!/usr/bin/env bash
# This script generate all preview images for the themes

root="$(git rev-parse --show-toplevel)"
tools="$root/.tools"
themes="$root/themes"

# new kitty window, return its id
id=$(kitty @ new-window --title themes --window-type os --cwd "$tools")
# start bash without reading the profile nor the configuration
kitty @ send-text --match id:"$id" "/usr/bin/env bash --noprofile --norc\n"

# save all preview in this directory
previews="$root/_previews"
if [ ! -d "$previews" ]; then
	mkdir "$previews"
fi


find "$themes" -name "*.conf" -print0 | while read -d $'\0' -r theme; do
	echo "Genereting theme preview for $theme"
	./generate_theme_preview.sh "$id" "$theme" "$previews"
done
