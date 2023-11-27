#!/bin/sh
#
# Ein Commit wird ausgecheckt. Dafuer wird ein neuer Branch erzeugt.
# Auf diesen Branch wird gewechselt.
#
# 1. Parameter: Name des neuen Branch
# 2. Parameter: ID des Commits, auf den gewechselt wird
#
if [ -z "$1" ]
then
echo "usage: git-switch-to-commit.sh <branchname> <commit-id>"
else
git checkout -b $1 $2
fi

