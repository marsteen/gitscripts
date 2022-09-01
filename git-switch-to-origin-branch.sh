#!/bin/sh
git fetch
git switch -c $1 origin/$1

