FROM maven:3.6-jdk-8-slim AS builder

COPY ./java/word-count-beam /opt/app
WORKDIR /opt/app
RUN mvn package -Pflink-runner -DskipTests

FROM flink:1.11.1-scala_2.11

WORKDIR /opt/flink/bin

# Copy job jar
COPY --from=builder /opt/app/target/word-count-beam-bundled-*.jar /opt/beam-job.jar
