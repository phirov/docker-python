#!/bin/sh

: ${IMAGE_NAME:=$1}
: ${IMAGE_NAME:='phirov/pluck'}
: ${APP_NAME:=$2}
: ${APP_NAME:='python-pluck'}

echo "
docker run -d --name ${APP_NAME} ${IMAGE_NAME}
"
docker run -d \
	--name ${APP_NAME} \
	${IMAGE_NAME}
