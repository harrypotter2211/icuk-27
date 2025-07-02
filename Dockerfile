FROM eclipse-temurin:8-jre-alpine

WORKDIR /app

# Copy the jar file built by Maven
COPY target/oms-eureka-service-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
