FROM eclipse-temurin:8-jre-alpine

VOLUME /tmp

# Copy the only JAR in the target folder into the image
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

EXPOSE 8080
