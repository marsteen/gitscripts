#!/bin/sh
#
git config --global credential.helper store
branchname=$(git rev-parse --abbrev-ref HEAD)
echo $branchname
git push -u origin $branchname --force
