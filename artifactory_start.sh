docker run \
  --name artifactory \
  --detach \
  -p 8081:8081 \
  -v artifactory_data:/var/opt/jfrog/artifactory \
  docker.bintray.io/jfrog/artifactory-oss:latest
