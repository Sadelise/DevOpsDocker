#!/bin/bash

# download given git repo
echo "Give a github address for cloning:"
read; 
git clone ${REPLY}

# move to app root
appname=`echo ${REPLY} | cut -d "/" -f 5 | cut -d "." -f 1`
cd $appname

# build docker image
docker build -t sadelise/automated-app:latest -f Dockerfile .

# login and publish to docker hub
docker login
docker push sadelise/automated-app:latest
