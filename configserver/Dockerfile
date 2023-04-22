# Start with a base image
FROM openjdk:17.0.2

# who is the maintainer of the image
MAINTAINER vamckrishna

# Set the working directory
WORKDIR /app

# Copy the Spring Boot application jar file into the container
COPY target/*.jar app.jar

# Run the application
CMD ["java", "-jar", "/app/app.jar"]