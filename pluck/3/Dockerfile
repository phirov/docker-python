# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices
# Forked: https://hub.docker.com/r/amancevice/pandas
FROM		phirov/pandas:0.19-3
MAINTAINER	phirov@163.com

RUN		apk add --no-cache \
                        --virtual .build-deps \
                        gcc \
                        musl-dev \
                        python3-dev \
                        postgresql-dev g++ && \
		pip3 install --upgrade pip3 && \
		pip3 install pykafka && \
		pip3 install pymongo && \                
		pip3 install pyodbc \
		            psycopg2 && \
		pip3 install boto \
                            boto3 && \
		apk del .build-deps
