#!/bin/sh
git push origin $(git describe --abbrev=0)

