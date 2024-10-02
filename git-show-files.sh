#!/bin/sh
#
if [ -z "$1" ]
then
echo "usage:  git-show-files.sh <commit-id>"
echo "action: show the files for a commit"
else
git diff-tree --no-commit-id --name-only $1 -r
fi
