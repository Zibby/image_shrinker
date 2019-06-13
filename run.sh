docker build -t mofrad_is_the_best .
docker run --rm -it \
  -v "$PWD"/input_folder:/app/input \
  -v "$PWD"/shrunk:/app/shrunk \
  -e COMPRESSION_LEVEL=80 \
  mofrad_is_the_best
