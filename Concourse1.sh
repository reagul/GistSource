#!/bin/sh

set -e # fail fast
set -x # print commands

git clone Concourse1 updated-gist

cd updated-gist
echo "Starting MVN Test"
mvn clean package
#echo $(date) > bumpme
echo "@@@@@@@@@@@@@@@@@ MVN Build Completed @@@@@@@@@@@@@@@@@@"
git config --global user.email "reagul@concourse.ci"
git config --global user.name "reagul"

git add .
git commit -m 'Test Completed at "$(date)" '
ls -la
pwd
cd ../
echo "LS LA ouput"

ls -la
pwd

