#!/bin/bash

VERSION=s6

docker image push docker.io/vamckrishna/accounts:"$VERSION"
docker image push docker.io/vamckrishna/loans:"$VERSION"
docker image push docker.io/vamckrishna/cards:"$VERSION"
docker image push docker.io/vamckrishna/configserver:"$VERSION"