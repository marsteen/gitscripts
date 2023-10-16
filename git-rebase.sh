#!/bin/sh

#
# Aktuellen Branchnamen ermitteln
#

if [ -z "$1" ]
then
    echo "usage: git-commit <message>"
else

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

    #
    # branch "force-pushen"
    #

    echo "hint: use 'git-push-force.sh' for pushing"
fi

