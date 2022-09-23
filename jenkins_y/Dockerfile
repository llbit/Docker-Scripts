FROM jenkins/jenkins:latest
# https://stackoverflow.com/questions/29732990/installing-a-gcc-compiler-onto-a-docker-container
USER root
RUN apt-get update \
	&& apt-get install -y python2 \
	&& rm -rf /var/lib/apt/lists/*
USER jenkins
