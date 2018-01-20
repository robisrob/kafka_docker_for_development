#!/usr/bin/env bash
if [ -z "$1" ]
  then
    echo "No topic supplied"
  else
    /app/kafka_2.10-0.8.2.2/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic $1 --from-beginning
fi

