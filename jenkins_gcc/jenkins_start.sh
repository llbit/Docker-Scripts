#!/bin/sh

docker build -t jenkins_gcc .
docker run \
	--name jenkins \
	--detach \
	-p 8080:8080 -p 50000:50000 \
	-v jenkins_home:/var/jenkins_home \
	jenkins_gcc