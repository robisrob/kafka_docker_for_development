#!/usr/bin/env bash
if [ -z "$1" ]
  then
    echo "No topic supplied"
  else
    /app/kafka_2.11-0.10.1.1/bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic $1 
fi



