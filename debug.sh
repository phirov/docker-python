#!/bin/sh

: ${IMAGE_NAME:=$1}
: ${IMAGE_NAME:='phirov/scipy'}
: ${APP_NAME:=$2}
: ${APP_NAME:='scipy'}

echo "
docker run -it --rm --name ${APP_NAME} ${IMAGE_NAME} /bin/sh
"
docker run -it --rm \
	--name ${APP_NAME} \
	${IMAGE_NAME} \
		/bin/bash
