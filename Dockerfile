FROM alpine/git as import
WORKDIR /app
RUN git clone https://github.com/spannozzo/spring-mentoring

FROM maven:3.8.1-openjdk-11-slim as build
COPY --from=import /app/ /app
WORKDIR /app/spring-mentoring
RUN mvn clean package -DskipTests
CMD mvn spring-boot:run

FROM openjdk:11-jre-slim as deploy
COPY --from=build /app/spring-mentoring/target /target
WORKDIR /target
run java -jar spring-example-0.0.1-SNAPSHOT.jar