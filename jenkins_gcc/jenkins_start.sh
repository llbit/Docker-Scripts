#!/bin/sh

docker build -t jenkins_gcc .
docker stop jenkins
docker rm jenkins
docker run \
	--name jenkins \
	--detach \
	-u $(id -u):$(id -g) \
	-p 80:8080 -p 50000:50000 \
	-v /jasttest/jenkins_home:/var/jenkins_home \
	jenkins_gcc
