FROM jenkins/jenkins:latest
# https://stackoverflow.com/questions/29732990/installing-a-gcc-compiler-onto-a-docker-container
USER root
RUN apt-get update \
	&& apt-get install -y gcc g++ \
	libtool m4 autotools-dev automake make \
	libncurses5-dev flex mcpp bison zlib1g-dev libsqlite3-dev libffi-dev \
	&& rm -rf /var/lib/apt/lists/*
USER jenkins
