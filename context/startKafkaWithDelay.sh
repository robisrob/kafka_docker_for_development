#!/bin/bash
now=$(date +"%T")
echo "$now begin sleep"
sleep 20
now=$(date +"%T")
echo "$now end sleep and start kafka"
/app/kafka_2.10-0.8.2.2/bin/kafka-server-start.sh /app/kafka_2.10-0.8.2.2/config/server.properties
