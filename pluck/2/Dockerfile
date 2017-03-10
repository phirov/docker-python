# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices
# Forked: https://hub.docker.com/r/amancevice/pandas
FROM		phirov/pandas:0.19-2
MAINTAINER	phirov@163.com

RUN		apk add --no-cache \
                        --virtual .build-deps \
                        gcc \
		        g++ \
                        musl-dev \
                        python-dev \
                        postgresql-dev \
		        py-psycopg2 \
		        unixodbc-dev && \
		pip install pykafka && \
		pip install pymongo && \                
		pip install pyodbc \
		            psycopg2 && \
		pip install boto \
                            boto3
		#apk del .build-deps
