#!/bin/sh

: ${IMAGE_NAME:=$1}
: ${IMAGE_NAME:='phirov/python'}
: ${APP_NAME:=$2}
: ${APP_NAME:='python'}

echo "
docker run -it --rm --name ${APP_NAME} ${IMAGE_NAME} /bin/sh
"
docker run -it --rm \
	--name ${APP_NAME} \
	${IMAGE_NAME} \
		/bin/bash
