#!/bin/sh
#
if [ -z "$1" ]
then
echo "usage: git-commit <message>"
else
git commit -a -m "$1"
fi

