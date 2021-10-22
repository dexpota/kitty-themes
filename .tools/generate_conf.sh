#!/usr/bin/env bash

find /Users/pbenjamin/Projects/github.com/mbadolato/iTerm2-Color-Schemes/terminal -name "*.terminal" -print0 | while read -d $'\0' -r file; do
	filename=`basename "$file"`
	without_ext=${filename%.*}
	removed_spaces=${without_ext// /_}
	# output_filename=`echo ${removed_spaces} | tr '[:upper:]' '[:lower:]'`
	echo ${removed_spaces}.conf
	./.tools/convert_conf.swift "$file" > ./themes/${removed_spaces}.conf
done
