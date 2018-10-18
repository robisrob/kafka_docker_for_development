FROM openjdk:8-jre-alpine

WORKDIR /app

ENV KAFKA_HOST localhost
ENV KAFKA_PORT 9092
ENV KAFKA_INTERNAL_HOST kafka
ENV KAFKA_INTERNAL_PORT 9093
ENV KAFKA_LISTENERS="INTERNAL://:${KAFKA_INTERNAL_PORT},PLAINTEXT://:${KAFKA_PORT}"
ENV KAFKA_ADVERTISED_LISTENERS="INTERNAL://${KAFKA_INTERNAL_HOST}:${KAFKA_INTERNAL_PORT},PLAINTEXT://${KAFKA_HOST}:${KAFKA_PORT}"
ENV PATH="/app/utils:${PATH}"

EXPOSE 2181
EXPOSE 9092

RUN apk update \
    && apk add bash libc6-compat supervisor

COPY utils/ /app/utils/
COPY supervisord.conf /app/supervisord.conf
COPY configureKafka.sh /app/configureKafka.sh

ARG kafka_version=2.11-1.1.0

RUN chmod a+x /app/configureKafka.sh \
    && chmod a+x /app/utils/* \
    && mkdir logs \
    && wget "https://archive.apache.org/dist/kafka/1.1.0/kafka_$kafka_version.tgz" \
    && tar xvzf kafka_$kafka_version.tgz \
    && rm kafka_$kafka_version.tgz \
    && ln -s /app/kafka_$kafka_version /app/kafka

CMD /usr/bin/supervisord -c /app/supervisord.conf