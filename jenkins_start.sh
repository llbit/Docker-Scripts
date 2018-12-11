# Note: to create docker volume inside nfs mount:
# docker volume create --opt type=none --opt o=bind --opt device=/mnt/vmstore/jenkins_home jenkins_home
# NB: /mnt/vmstore/jenkins_home should be created first.

# Note: update Jenkins by running docker pull jenkins/jenkins:lts
# Shut Jenkins down by first going to http://localhost:8080/quietDown
docker run \
  --name jenkins \
  --detach \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:latest
