FROM openjdk:17-jdk-slim

WORKDIR /app

COPY /target/assignment-0.0.1-SNAPSHOT.jar /app/assignment.jar

EXPOSE 8082

ENTRYPOINT ["java","-jar","/app/assignment.jar"]