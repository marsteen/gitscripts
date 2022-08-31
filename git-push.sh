#!/bin/sh
#
#git config credential helper store
git config --global credential.helper store
branchname=$(git rev-parse --abbrev-ref HEAD)
echo $branchname
git push -u origin $branchname
