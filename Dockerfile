FROM openjdk:8-alpine AS build

WORKDIR /app

COPY . .

RUN ./mvnw package

FROM openjdk:8-alpine

WORKDIR /app

COPY --from=build /app/target/SpringDataRestBoot-0.0.1-SNAPSHOT.jar .

CMD [ "java", "-jar" , "/app/SpringDataRestBoot-0.0.1-SNAPSHOT.jar"]
