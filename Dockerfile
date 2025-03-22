FROM openjdk:21-jdk
LABEL authors="rajdeeps"
WORKDIR /app
ARG JAR_FILE=build/libs/cloudnative-0.0.7.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar" ,"app.jar"]
