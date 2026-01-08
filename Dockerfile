# Use Java 21 runtime
FROM eclipse-temurin:21-jdk-alpine

# Temporary volume for Spring Boot
VOLUME /tmp

# Copy the JAR file
COPY target/*.jar app.jar

# Run the Spring Boot app
ENTRYPOINT ["java","-jar","/app.jar"]
