# consult: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices
# Forked: https://github.com/CHECK24/docker.alpine.scipy
FROM            phirov/pandas:0.19-2
MAINTAINER      phirov@163.com

RUN		ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime
#RUN		echo "http://nl.alpinelinux.org/alpine/v3.4/main" > /etc/apk/repositories

COPY		libs/* /tmp/

RUN		apk update && \
		apk add --no-cache --virtual build-deps \
		        g++ \
		        ca-certificates \
		        openntpd \
		        build-base \
		        musl-dev \
		        gfortran \
		        libgfortran && \
		# Build BLAS and LAPACK
		source /tmp/blas.sh && \
		source /tmp/lapack.sh && \
		# Install cython, numpy, pandas, scipy
		export BLAS=~/src/BLAS/libfblas.a && \
		export LAPACK=~/src/lapack-3.5.0/liblapack.a && \
		#pip install numpy==1.11.2 cython==0.25.1 && \
		#pip install pandas==0.19.1 && \
		pip install scipy==0.18.1 && \
		# Clean up
		mv ~/src/BLAS/libfblas.a /tmp/ && \
		mv ~/src/lapack-3.5.0/liblapack.a /tmp/ && \
		rm -rf ~/src && \
		mkdir -p ~/src/BLAS ~/src/lapack-3.5.0 && \
		mv /tmp/libfblas.a ~/src/BLAS/libfblas.a && \
		mv /tmp/liblapack.a ~/src/lapack-3.5.0/liblapack.a && \
		rm -rf /tmp/* && \
		rm -rf ~/.cache/pip && \
		# Remove all the extra build stuff
		apk del build-base "*-dev" && \
		apk del build-deps


