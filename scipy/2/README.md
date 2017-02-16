# Alpine based Dockerimage for Python with SciPy-stack

This image is base on [CHECK24](https://github.com/CHECK24/docker.alpine.scipy) 
or [catholabs](https://github.com/catholabs/docker-alpine)

This repository contains a Dockerfile for building a python ready image
that is running based on Alpine 3.4 and Python 2.7

It provides the following python libaries

- scipy (0.18.1)

To build the image execute the following command:

```
./deploy.sh 
```

To test scipy you've to enter the following command:

```
./debug.sh
```

