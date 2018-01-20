# Kafka docker image for development
## Purpose
Docker image to easily creating a container with Kafka and Zookeeper running in it, that you can use for development.

The services are started as explained in the quickstart of [Kafka](https://kafka.apache.org/quickstart)

## Building image
```
docker build -t robisrob/kafka-for-dev:version .
```

## This image is automatically build in Docker Hub 
[https://hub.docker.com/r/robisrob/kafka_docker_for_development/](https://hub.docker.com/r/robisrob/kafka_docker_for_development/)

## Running image
```
docker run -p 2181:2181 -p 9092:9092 robisrob/kafka-for-development:version
```

## Changing the ports
### Changing the port of KAFKA
You need to pass the environment variable KAFKA_PORT as well as changing the mapping of the ports

Example:
Run KAFKA on port 9093
```
docker run -p 2181:2181 -p 9093:9093 -e KAFKA_PORT=9093 robisrob/kafka-for-development:version
```
### Changing the port of ZOOKEEPER
Map the default zookeeper port to your port of choice

Example
Run Zookeeper on port 2182
```
docker run -p 2182:2181 -p 9092:9092 robisrob/kafka-for-development:version
```

## Change the kafka advertised host
The default value is 127.0.0.1 

If you want to change this you can pass another value as an environment variable
```
docker run -p 2181:2181 -p 9092:9092 -e KAFKA_ADVERTISED_HOST=192.168.1.1 robisrob/kafka-for-development:version
```
