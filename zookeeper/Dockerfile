FROM openjdk:8-jre-alpine
WORKDIR /app
RUN apk update && apk add bash && \
    wget "http://apache.belnet.be/kafka/1.0.0/kafka_2.11-1.0.0.tgz" && \
    tar xvzf kafka_2.11-1.0.0.tgz && rm kafka_2.11-1.0.0.tgz
CMD kafka_2.11-1.0.0/bin/zookeeper-server-start.sh kafka_2.11-1.0.0/config/zookeeper.properties 
