#!/usr/bin/env bash

id=$(kitty @ new-window --title themes --window-type os --cwd ~/developing/projects/kitty-themes/.tools)
sys_id=$(./windowid.swift "kitty" "themes")
kitty @ send-text --match id:$id "/usr/local/bin/bash --noprofile --norc\n"
exit
find ../themes -name "*.conf" -print0 | while read -d $'\0' -r theme; do	
	preview_filename=$(basename ${theme%.*})
	kitty @ set-colors --match id:$id "$theme"
	kitty @ send-text --match id:$id "clear\n"
	kitty @ send-text --match id:$id "./color_table.sh && echo -e '\\e[1S'\n"
	sleep 1
	screencapture -l$sys_id ./previews/$preview_filename.png
done
