#!/bin/sh

set -e # fail fast
set -x # print commands

git clone Concourse1 updated-gist

cd updated-gist
echo "Starting MVN Test"
mvn clean package
echo $(date) > bumpme
echo "Stop"
git config --global user.email "reagul@concourse.ci"
git config --global user.name "reagul"

git add .
git commit -m "Bumped date"
ls -la
pwd
cd ../

echo "test message here"
ls -la
pwd
echo "more msg here"
