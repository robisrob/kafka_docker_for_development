FROM openjdk:8-jre-alpine
WORKDIR /app
RUN mkdir logs && \
    apk update && apk add bash && apk add libc6-compat && apk add supervisor && \
    wget "https://archive.apache.org/dist/kafka/0.8.2.2/kafka_2.10-0.8.2.2.tgz" && \
    tar xvzf kafka_2.10-0.8.2.2.tgz && rm kafka_2.10-0.8.2.2.tgz
COPY supervisord.conf /app/supervisord.conf
COPY server.properties /app/server.properties
CMD /usr/bin/supervisord -c /app/supervisord.conf