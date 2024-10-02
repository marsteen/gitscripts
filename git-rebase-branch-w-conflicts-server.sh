#!/bin/sh
#
#
if [ -z "$1" ]
then
echo "usage: git-rebase-branch-w-conflicts-server.sh <branchname>"
echo "       makes a rebase of the given branch to your branch and keeps the"
echo "       changes of the given branch"
else
#
# Aktuellen Branchnamen ermitteln
#

branchname=$(git rev-parse --abbrev-ref HEAD)

#
# anderenbranch updaten
#

git switch $1
git pull

#
# auf alten branch zurueckwechseln
#

git switch $branchname

#
# branch auf develop rebasen
#

git rebase --strategy-option ours $1 

#
# branch "force-pushen"
#

echo "hint: use 'git-push-force.sh' for pushing"

#
#
#
fi
