#!/usr/bin/env bash

#mvn -pl ./accounts compile jib:dockerBuild
#
#mvn -pl ./loans compile jib:dockerBuild
#
#mvn -pl ./cards compile jib:dockerBuild
#
#mvn -pl ./configserver compile jib:dockerBuild
#
#mvn -pl ./eurekaserver compile jib:dockerBuild
#
#mvn -pl ./gatewayserver compile jib:dockerBuild

VERSION=s14

mvn clean package -DskipTests

docker build -t vamckrishna/configserver:"$VERSION" ./configserver
docker build -t vamckrishna/accounts:"$VERSION" ./accounts
docker build -t vamckrishna/loans:"$VERSION" ./loans
docker build -t vamckrishna/cards:"$VERSION" ./cards
docker build -t vamckrishna/eurekaserver:"$VERSION" ./eurekaserver
docker build -t vamckrishna/gatewayserver:"$VERSION" ./gatewayserver
docker build -t vamckrishna/message:"$VERSION" ./message