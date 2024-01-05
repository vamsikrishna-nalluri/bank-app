FROM openjdk:17-jdk-slim

MAINTAINER "Vamsi Krishna"

WORKDIR /app

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]

FROM maven:3.9.6-eclipse-temurin-21-alpine AS MAVEN_BUILD

MAINTAINER "Vamsi Krishna"

RUN apk add --no-cache zip

