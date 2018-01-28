 #!/usr/bin/env bash
 
if [ -z "$1" ]
  then
    echo "No consumer group supplied"
  else
    /app/kafka_2.10-0.8.2.2/bin/kafka-consumer-offset-checker.sh  --group $1 --zookeeper localhost:2181
fi