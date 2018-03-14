#!/usr/bin/env bash

sed -i "s/#listeners=PLAINTEXT:\/\/:9092/listeners=PLAINTEXT:\/\/0.0.0.0:$KAFKA_PORT/" /app/kafka_2.11-0.10.1.1/config/server.properties
sed -i "s/#advertised.listeners=PLAINTEXT:\/\/your.host.name:9092/advertised.listeners=PLAINTEXT:\/\/$KAFKA_HOST:$KAFKA_PORT/" /app/kafka_2.11-0.10.1.1/config/server.properties


