FROM maven:3-amazoncorretto-17 as builder
WORKDIR app
COPY . .
RUN mvn clean install -DskipTests

FROM amazoncorretto:17-alpine-jdk
WORKDIR app
COPY --from=builder /app/target/app.jar app.jar
CMD ["java", "-jar", "app.jar"]
