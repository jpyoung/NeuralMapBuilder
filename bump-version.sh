#!/bin/sh
usage() {
	echo "usage: bump-version <version-id>"
}

if [ $# -ne 1 ]; then
	usage
	exit 1
fi

echo "bump-version"
echo "$#"
echo "$1"

echo "ggit -m 'Bump version number to $1'"
