#Updating to debian stretch-slim stack
FROM debian:stretch-slim
RUN apt-get update; apt-get install wget -y;
ADD entrypoint.sh /entrypoint.sh

RUN mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio

CMD /entrypoint.sh
