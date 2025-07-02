# Use Java 8 base image
FROM eclipse-temurin:8-jre-alpine

WORKDIR /app

# Copy the jar file built by Maven into the container
COPY target/oms-eureka-service-0.0.1-SNAPSHOT.jar app.jar

# Expose Eureka default port
EXPOSE 8080

# Entry point without Java 17 module issues
ENTRYPOINT ["java", "-jar", "app.jar"]
