#!/bin/sh
#
# SQUASHEN von Commits (oder andere Aktionen)
#
# Die Liste der Eintraege wird VON OBEN NACHN UNTEN
# abgearbeitet. Bei einem "squash" wird also der 1. Commit mit dem Vorgaenger
# gesquasht, der 2. Commit mit dem 1.,  der 3. mit dem 2 usw.
#
# Als commit-id wird die ID des letzten Commits angegeben, der in der Liste 
# auftauchen soll. 
#
if [ -z "$1" ]
then
echo "usage: git-rebase-interactive.sh <commit-id>"
else
git rebase --interactive $1
fi




