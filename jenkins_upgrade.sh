#!/bin/sh

docker stop jenkins
docker rm jenkins_prev
docker rename jenkins jenkins_prev
docker pull jenkins/jenkins:latest
