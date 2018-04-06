docker build -t experiment .
docker run -it \
  --rm \
  --network none \
  --name scratch \
  experiment

#docker run -it \
#  --rm \
#  --name scratch \
#  experiment
