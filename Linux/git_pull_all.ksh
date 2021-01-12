#!/bin/ksh
#
# A script to find git repos and update them via pull
# by Roger McCarty (@RogerMcCarty)
#

## Configure here the path for the directory
##   where you have all your repositories
LOC="$HOME/GitHub"

find $LOC -name ".git" -type d | while read dir; do
	dir=$(dirname $dir)
	echo $dir
	cd $dir
	#ls -al
	git pull
done

