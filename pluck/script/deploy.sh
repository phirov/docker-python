#!/bin/sh

DF_PATH=$1
: ${DF_PATH:='2'}

IMAGE_NAME=$2
: ${IMAGE_NAME:='phirov/pluck'}

IMAGE_VERSION=$3
: ${IMAGE_VERSION:=${DF_PATH}}

cd ${DF_PATH}
docker rmi ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_VERSION}
docker build -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .
