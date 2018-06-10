#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

git submodule init
git submodule update

cd ${DIR}/babystepstimer
git checkout -b mikado-demo 0bd1d4b1958d


cd ${DIR}/babystepstimer/Cpp
git apply ../../snippets/00_setup.patch
git add .gitignore build.sh test/test.h
git commit -m "setup"

