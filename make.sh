docker build -t "i1900-lineage" .

mkdir -p sources
sudo docker run -it --volume $(pwd)/sources/:/home/android/ i1900-lineage:latest
