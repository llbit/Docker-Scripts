# Starts a temporary container for experimenting.
docker build -t nodebox .
docker run -it \
  --rm \
  --name node \
  nodebox
