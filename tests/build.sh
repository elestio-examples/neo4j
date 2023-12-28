#!/usr/bin/env bash

./build-docker-image.sh 5.10.0 community debian
mv build/debian/coredb/community/* ./
sed -i "s~ARG SCOPE~ARG SCOPE="NEO4J_URI=file:///startup/neo4j-5.10.0-community-unix.tar.gz"~g" Dockerfile

docker buildx build . --output type=docker,name=elestio4test/neo4j:latest | docker load
