#!/usr/bin/env bash

for f in $(find ../previews -name "*.png" | sort); do
	header=`basename ${f%.*} | sed 's/_/ /g'`
	image="![image]($f)"
	echo \#\# $header
	echo $image
done
