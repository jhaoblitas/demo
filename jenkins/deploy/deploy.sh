#!/bin/bash

# Generamos
echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth

# Transfiere el archivo
scp /tmp/.auth 192.168.126.200:/tmp/.auth 
scp ./jenkins/deploy/publish.sh 192.168.126.200:/tmp/publish
ssh root@192.168.126.200 /tmp/publish
