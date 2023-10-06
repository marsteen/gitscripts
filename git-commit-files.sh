#!/bin/sh
#
if [ -z "$1" ]
then
echo "usage: git-commit-files <message> <file>"
else
git commit -m "$1" $2 $3 $4 $5 $6 $7 $8 $9
fi

