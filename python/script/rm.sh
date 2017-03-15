#!/bin/sh

IMAGE_NAME='phirov/python'

while [ 1 ]; do
    IMAGE_VERSION=`docker images | grep ${IMAGE_NAME} | tail -n 1 | awk '{print $2}'`
    if [ ${IMAGE_VERSION} ]; then
        echo "docker rmi ${IMAGE_NAME}:${IMAGE_VERSION}"
        docker rmi ${IMAGE_NAME}:${IMAGE_VERSION}
    else
        break
    fi
done
