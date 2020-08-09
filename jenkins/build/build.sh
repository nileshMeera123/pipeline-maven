#!/bin/bash

# copy the jar file to build folder

cp -f java-app/target/*.jar jenkins/build/

echo "***********Build the image for java aplication**************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
