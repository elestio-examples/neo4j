#!/usr/bin/env bash

docker buildx build . --output type=docker,name=elestio4test/neo4j:latest | docker load
