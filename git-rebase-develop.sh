#!/bin/sh

#
# Aktuellen Branchnamen ermitteln
#

branchname=$(git rev-parse --abbrev-ref HEAD)

#
# develop branch updaten
#

git switch develop
git pull

#
# auf alten branch zurueckwechseln
#

git switch $branchname

#
# branch auf develop rebasen
#

git rebase develop

#
# branch force-pushen
#


./git-push-force.sh

