#!/usr/bin/env bash
if [ -z "$1" ]
  then
    echo "No topic supplied"
  else
    /app/kafka/bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic $1
fi



