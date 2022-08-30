#!/bin/sh
#
if [ -z "$1" ]
then
echo "usage: git-squash-last-commits.sh <nr> <message>"
echo "  nr=number of last commits to squash"
echo "  message=new commit message"
else
git reset --soft HEAD~$1
git commit -a -m "$2"
fi




