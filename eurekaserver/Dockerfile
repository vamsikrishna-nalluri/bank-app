FROM openjdk:17-jdk-slim

MAINTAINER "Vamsi Krishna"

WORKDIR /app

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]
