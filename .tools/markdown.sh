#!/usr/bin/env bash

previews_root=$1

for f in $(find "$previews_root" -maxdepth 1 -type d | sort); do
	preview_file="$f"/preview.png
	echo $preview_file
	relative_path=$(realpath --relative-to="$previews_root" "$preview_file")/previews
	header=`basename ${f%.*} | sed 's/_/ /g'`
	image="![image]($f)"
	echo \#\# $header
	echo $image
done
