#!/bin/sh
# https://www.baeldung.com/ops/git-squash-commits
git log --graph --all --topo-order --pretty='format:%h %ai %s%d (%an)'

