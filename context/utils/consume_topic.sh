#!/usr/bin/env bash
if [ -z "$1" ]
  then
    echo "No topic supplied"
  else
    /app/kafka_2.11-0.10.2.0/bin/kafka-console-consumer.sh --bootstrap-server localhost:$KAFKA_PORT --topic $1 --from-beginning
fi

