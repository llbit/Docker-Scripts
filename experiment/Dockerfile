#FROM debian
FROM ubuntu:bionic

RUN apt-get update && \
	apt-get install -y git zip vim curl

#	apt-get install -y git zip openjdk-8-jdk-headless vim

WORKDIR /root

COPY ./init/inputrc .inputrc

CMD ["bash"]
