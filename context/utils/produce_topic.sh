#!/usr/bin/env bash
if [ -z "$1" ]
  then
    echo "No topic supplied"
  else
    /app/kafka_2.11-1.0.1/bin/kafka-console-producer.sh --broker-list localhost:$KAFKA_PORT --topic $1
fi
