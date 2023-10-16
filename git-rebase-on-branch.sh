#!/bin/sh

#
# Aktuellen Branchnamen ermitteln
#

branchname=$(git rev-parse --abbrev-ref HEAD)

#
# develop branch updaten
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

git rebase $1 
#git rebase --strategy-option theirs develop

#
# branch "force-pushen"
#


echo "hint: use 'git-push-force.sh' for pushing"

