#!/bin/sh

: ${IMAGE_NAME:=$1}
: ${IMAGE_NAME:='phirov/scipy'}
: ${APP_NAME:=$2}
: ${APP_NAME:='scipy'}

echo "
docker run -d --name ${APP_NAME} ${IMAGE_NAME}
"
docker run -d \
	--name ${APP_NAME} \
	${IMAGE_NAME}
