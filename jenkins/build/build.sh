#!/bin/bash

# Copia el jar

cp -f service-config-server/target/*.jar jenkins/build/  

echo "######################"
echo "*** Building image ***"
echo "######################"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
