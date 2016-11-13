# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/#/add-or-copy
# Forked: https://hub.docker.com/r/amancevice/pandas
FROM		phirov/python:3
MAINTAINER	phirov@163.com

RUN		apk add --no-cache --virtual .build-deps g++ && \
		pip3 install numpy==1.11.2 cython==0.25.1 && \
		pip3 install pandas==0.18.1 && \
		apk del .build-deps
