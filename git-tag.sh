#!/bin/sh
#
#
if [ -z "$1" ]
then
echo "usage: git-tag <tag> <message>"
else
git tag -a $1 -m "$2" 
fi
#
