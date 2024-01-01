#!/bin/bash

VERSION=s8

docker image push docker.io/vamckrishna/accounts:"$VERSION"
docker image push docker.io/vamckrishna/loans:"$VERSION"
docker image push docker.io/vamckrishna/cards:"$VERSION"
docker image push docker.io/vamckrishna/configserver:"$VERSION"
docker image push docker.io/vamckrishna/eurekaserver:"$VERSION"