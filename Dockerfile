# Use a specific version of the JDK for better reproducibility
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file (make sure your pom.xml builds a single JAR with dependencies)
COPY target/order-ms-0.0.1-SNAPSHOT.jar order-ms-0.0.1-SNAPSHOT.jar

# Expose the port your app runs on
EXPOSE 8088

# Run the application
ENTRYPOINT ["java", "-jar", "/order-ms-0.0.1-SNAPSHOT.jar"]