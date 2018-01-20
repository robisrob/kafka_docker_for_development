#!/usr/bin/env bash

sed -i "s/port=9092/port=$KAFKA_PORT/" /app/kafka_2.10-0.8.2.2/config/server.properties
sed -i "s/#host.name=localhost/advertised.host.name=$KAFKA_ADVERTISED_HOST/" /app/kafka_2.10-0.8.2.2/config/server.properties