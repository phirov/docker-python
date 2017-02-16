# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices
# Forked: https://hub.docker.com/r/amancevice/pandas
FROM		phirov/python:2
MAINTAINER	phirov@163.com

RUN		apk add --no-cache --virtual build-deps g++ && \
		pip install cython==0.25.2 \
		            numpy==1.12.0 \
		            scipy==0.18.1 \
		            pandas==0.19.2 && \
		pip install jmespath pymongo && \
		apk del build-deps
