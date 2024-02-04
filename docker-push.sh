#!/bin/bash

VERSION=s13

docker image push docker.io/vamckrishna/accounts:"$VERSION"
docker image push docker.io/vamckrishna/loans:"$VERSION"
docker image push docker.io/vamckrishna/cards:"$VERSION"
docker image push docker.io/vamckrishna/configserver:"$VERSION"
docker image push docker.io/vamckrishna/eurekaserver:"$VERSION"
docker image push docker.io/vamckrishna/gatewayserver:"$VERSION"