#Updating to heroku:18 stack
FROM debian:stretch
RUN apt-get update; apt-get install wget -y;
ADD entrypoint.sh /entrypoint.sh

RUN mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio

CMD /entrypoint.sh
