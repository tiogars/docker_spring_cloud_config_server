# TODO check maven & java versions
FROM maven:3.9.5-eclipse-temurin-21-alpine AS build

# Copy source code
COPY src /home/app/src
COPY pom.xml /home/app

# Build application
RUN mvn -f /home/app/pom.xml clean package -DskipTests

# TODO check maven & java versions
FROM maven:3.9.5-eclipse-temurin-21-alpine

# Copy application from build image
COPY --from=build /home/app/target/*.jar /usr/local/lib/application.jar

# TODO confi files folder
RUN mkdir /usr/local/lib/config
VOLUME /usr/local/lib/config

# Set environment variables
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS

# Set port
EXPOSE 8888

# Run application
ENTRYPOINT ["java", "-jar", "/usr/local/lib/application.jar"]
