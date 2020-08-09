#!/bin/bash

echo maven-job > /tmp/.auth 
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user1@192.168.90.44:/tmp/.auth 
scp -i /opt/prod ./jenkins/deploy/publish.sh  prod-user1@192.168.90.44:/tmp/publish
ssh -i /opt/prod prod-user1@192.168.90.44 "/tmp/publish"
