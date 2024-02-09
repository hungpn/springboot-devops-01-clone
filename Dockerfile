FROM maven:3.9.6-eclipse-temurin-17 as build-jar-stage

COPY . .

RUN mvn clean package

FROM eclipse-temurin:21.0.2_13-jre-alpine as run-jar-stage

COPY --from=build-jar-stage ./target/devops-java-demo-01-0.0.1-SNAPSHOT.jar ./target/hello-world.jar

CMD ["java", "-jar", "./target/hello-world.jar"]