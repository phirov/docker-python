# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices
# Forked: https://hub.docker.com/r/amancevice/pandas
FROM		phirov/scipy:2
MAINTAINER	phirov@163.com

RUN		apk add --no-cache --virtual build-deps g++ && \
		pip install jmespath pymongo && \
		apk del build-deps
