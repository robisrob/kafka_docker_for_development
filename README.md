# Kafka docker image for development
## Purpose
Docker image to easily creating a container with Kafka and Zookeeper running in it, that you can use for development.

The services are started as explained in the quickstart of [Kafka]
(https://kafka.apache.org/quickstart)

## Building image
docker build -t robisrob/kafka-for-dev:version

## Running image
docker run -p 2181:2181 -p 9092:9092 robisrob/kafka-for-dev:version

