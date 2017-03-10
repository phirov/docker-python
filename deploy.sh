#!/bin/sh

IMAGE_NAME=$1
: ${IMAGE_NAME:='phirov/scipy'}

IMAGE_VERSION=$2
: ${IMAGE_VERSION:=`docker images | grep ${IMAGE_NAME} | head -n 1 | awk '{print $2}' | awk -F'.' '{print $1"."$2"."$3+1}'`}
: ${IMAGE_VERSION:='2'}

DF_PATH=$3
: ${DF_PATH:='scipy/2'}

cd ${DF_PATH}
docker build -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .
