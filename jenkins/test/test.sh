#!/bin/bash

echo "################"
echo "*** Testing  ***"
echo "################"

RUTA=/samba/anonymous/jenkins/jenkins_home/workspace/pipeline-demo
docker run -v /root/.m2:/root/.m2 -v $RUTA/service-config-server:/service-config-server -w /service-config-server maven:3-alpine "$@"

