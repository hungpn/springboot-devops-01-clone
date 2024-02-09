FROM maven:3.9.6-eclipse-temurin-17 as build-stage

COPY . .

RUN mvn clean package

FROM maven:3.9.6-eclipse-temurin-17

COPY --from=build-stage ./target/devops-java-demo-01-0.0.1-SNAPSHOT.jar ./target/hello-world.jar

CMD ["java", "-jar", "./target/hello-world.jar"]