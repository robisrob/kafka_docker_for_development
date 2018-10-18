#!/usr/bin/env bash

sed -i "s~#listeners=.*~listeners=$KAFKA_LISTENERS~" /app/kafka/config/server.properties
sed -i "s~#advertised.listeners=.*~advertised.listeners=$KAFKA_ADVERTISED_LISTENERS~" /app/kafka/config/server.properties
sed -i "s~#listener.security.protocol.map=.*~listener.security.protocol.map=PLAINTEXT:PLAINTEXT,INTERNAL:PLAINTEXT,SSL:SSL,SASL_PLAINTEXT:SASL_PLAINTEXT,SASL_SSL:SASL_SSL~" /app/kafka/config/server.properties


