#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-gist updated-gist

cd updated-gist
ls -la
echo $(date) > bumpme

git config --global user.email "nobody@concourse.ci"
git config --global user.name "reagul"

git add .
git commit -m "Bumped date"
ls -la
