# Use Eclipse Temurin JDK 8 (Alpine-based, lightweight)
FROM eclipse-temurin:8-jre-alpine

# Create app directory
WORKDIR /app

# Copy the jar built by Maven into the image
COPY target/oms-eureka-service-0.0.1-SNAPSHOT.jar app.jar

# Expose your default port (Eureka typically runs on 8761)
EXPOSE 8761

# Run the Spring Boot app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]
