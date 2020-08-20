#Updating to heroku:18 stack
FROM heroku/heroku:18

ADD entrypoint.sh /entrypoint.sh

RUN mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio

CMD /entrypoint.sh
