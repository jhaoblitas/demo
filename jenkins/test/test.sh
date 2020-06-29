#!/bin/bash

echo "################"
echo "*** Testing  ***"
echo "################"

docker run -v /root/.m2:/root/.m2 -v $PWD/service-config-server:/service-config-server -w /service-config-server maven:3-alpine "$@"

