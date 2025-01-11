FROM openjdk:17-jdk-slim

ARG JAR_FILE=target/dockerize-0.0.1-SNAPSHOT.jar 
ENV app.message="Hello from Docker !"

COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "java", "-jar", "/app.jar" ]