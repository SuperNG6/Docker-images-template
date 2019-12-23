#!/bin/bash

downloadpath='/downloads'

filepath=$3
rdp=${filepath#${downloadpath}/}
path=${downloadpath}/${rdp%%/*}

if [ $2 -eq 0 ]
	then
		exit 0
elif [ "$path" = "$filepath" ] && [ $2 -eq 1 ]
	then
	rm -vf "$filepath".aria2
	rm -vf "$filepath"
	exit 0
elif [ "$path" != "$filepath" ] && [ -e "$filepath".aria2 ]
	then
	rm -vf "$filepath".aria2
	rm -vf "$filepath"
	rmdir -v "${filepath%/*}"
	exit 0
elif [ "$path" != "$filepath" ] && [ -e "$path".aria2 ]
	then
	rm -vf "$path".aria2
	rm -vrf "$path"
	exit 0
fi
