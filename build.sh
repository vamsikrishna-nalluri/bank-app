#!/usr/bin/env bash

mvn -pl ./accounts compile jib:dockerBuild

mvn -pl ./loans compile jib:dockerBuild

mvn -pl ./cards compile jib:dockerBuild

mvn -pl ./configserver compile jib:dockerBuild