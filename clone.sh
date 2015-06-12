#!/bin/bash

REPO_DIR=/repo
REPO_VC_DIR=$REPO_DIR/.git

touch /root/.ssh/known_hosts
ssh-keyscan -T 10 `python gethost.py $REPO_URL` >> /root/.ssh/known_hosts

if [ ! -d $REPO_VC_DIR ]
then
    git clone $REPO_URL $REPO_DIR
else
    cd $REPO_DIR
    git pull $REPO_URL
fi
