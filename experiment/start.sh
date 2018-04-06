# Starts a temporary container for experimenting without network access.
docker build -t experiment .
docker run -it \
  --rm \
  --network none \
  --name scratch \
  experiment
