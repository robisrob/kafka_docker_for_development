# Kafka docker image for development
## Purpose
Docker image to start a container with Kafka and Zookeeper running in it, that you can use for development.

The services are started as explained in the quickstart of [Kafka](https://kafka.apache.org/quickstart)

## Building image
```
docker build -t sparkcentralinc/kafka-for-development:version .
```

## This image is automatically build in Docker Hub 
[https://hub.docker.com/r/sparkcentralinc/kafka_docker_for_development/](https://hub.docker.com/r/sparkcentralinc/kafka_docker_for_development/)

## Running image
```
docker run -p 2181:2181 -p 9092:9092 sparkcentralinc/kafka-for-development:version
```
 
## Changing the ports
### Changing the port of KAFKA
You need to pass the environment variable KAFKA_PORT as well as changing the mapping of the ports

Example:
Run KAFKA on port 9093
```
docker run -p 2181:2181 -p 9093:9093 -e KAFKA_PORT=9093 sparkcentralinc/kafka-for-development:version
```

### Changing the port of ZOOKEEPER
Map the default zookeeper port to your port of choice

Example
Run Zookeeper on port 2182
```
docker run -p 2182:2181 -p 9092:9092 sparkcentralinc/kafka-for-development:version
```

## Inspect topics
Using the following command you can step into a running container:
```
docker exec -it name_running_container /bin/bash
```
You can find all the standard kafka scripts in the folder /app/kafka_2.11-0.10.1.1/bin/

In the folder /app/utils (that is also added to the PATH) we added some convenience scripts. You can run the following commands.
```
list_topics.sh
```
```
describe_topic.sh topic_name
```
```
produce_topic.sh topic_name
```
```
consume_topic.sh topic_name
```
```
get_offset_consumergroup.sh consumergroup_name
```
