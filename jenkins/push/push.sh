#!/bin/bash

echo "**********Pushing Image**************"

IMAGE=maven-job

echo "***********logging to docker hub *******************"

docker login -u nileshm123 -p $PASS


echo "********Tagging the image*************"

docker tag $IMAGE:$BUILD_TAG nileshm123/$IMAGE:$BUILD_TAG


echo "**************Pushing the image****************"
docker push nileshm123/$IMAGE:$BUILD_TAG
