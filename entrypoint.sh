cd /minio
wget https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
export $MINIO_ACCESS_KEY
export $MINIO_SECRET_KEY
./minio server --address :$PORT /mnt/minio/data