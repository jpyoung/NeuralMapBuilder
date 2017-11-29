#!/bin/sh
set -e
curr=$(git rev-parse --abbrev-ref HEAD)
if [ "$curr" = "HEAD" ]; then
    echo "Not on a branch." >&2
    exit 1
else
    echo "$curr"
    exit 0
fi


