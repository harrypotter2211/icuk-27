# Use a lightweight JDK base image
FROM eclipse-temurin:8-jre-alpine

# Create a temp volume
VOLUME /tmp

# Copy the exact jar built by Maven
COPY target/oms-eureka-service-0.0.1-SNAPSHOT.jar app.jar

# Optional: Ensure timestamp changes to avoid caching issues
RUN sh -c 'touch /app.jar'

# Run the Spring Boot app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

# Expose the default Spring Boot port
EXPOSE 8761
