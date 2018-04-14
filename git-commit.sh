#!/bin/sh
usage() {
	echo "usage: bump-version <version-id>"
}

GIT_REV_COUNT=`git rev-list --all --count`

if [ $# -ne 1 ]; then
	usage
	exit 1
fi


echo "git commit count: $GIT_REV_COUNT"
echo "$#"
echo "$1"


if [ "$1" -gt "$GIT_REV_COUNT" ]; then
	# echo yes
	git commit -a -m "NMB-$GIT_REV_COUNT: auto commit"
else
	echo "ggit -m 'NMB-$GIT_REV_COUNT: auto commit'"
	echo "no"
fi



