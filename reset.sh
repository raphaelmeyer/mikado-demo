#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}/babystepstimer
git checkout master
git reset --hard 0bd1d4b1958d
git branch -D mikado-demo
git clean -f -d

