#!/bin/bash

export REGISTRY="192.168.126.200:5000"
export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)

cd ~/jenkins/ && docker-compose up -d

