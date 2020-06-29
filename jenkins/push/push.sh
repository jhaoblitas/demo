#!/bin/bash

echo "########################"
echo "*** Preparando el push ***"
echo "########################"

REGISTRY="192.168.126.200:5000"
IMAGE="app"

echo "*** Etiquetando la imagen ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Push de la imagen ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
