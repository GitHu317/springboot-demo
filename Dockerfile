# Use Java 17 runtime
FROM eclipse-temurin:17-jdk-alpine

# Temporary volume for Spring Boot
VOLUME /tmp

# Copy the JAR file
COPY target/*.jar app.jar

# Run the Spring Boot app
ENTRYPOINT ["java","-jar","/app.jar"]
