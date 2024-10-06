#!/bin/sh
#
# 1. Parameter: branch
# 2. Parameter: remote
#
git branch --set-upstream-to $1/$2
