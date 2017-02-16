#!/bin/sh

IMAGE_NAME=$1
: ${IMAGE_NAME:='phirov/scipy'}

DF_PATH=$2
: ${DF_PATH:='./scipy/2/Dockerfile'}

IMAGE_VERSION=$3
: ${IMAGE_VERSION:=`docker images | grep ${IMAGE_NAME} | head -n 1 | awk '{print $2}' | awk -F'.' '{print $1"."$2"."$3+1}'`}
: ${IMAGE_VERSION:='0.1.0'}


docker build -f ${DF_PATH} -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .
