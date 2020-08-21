cd /minio
wget --no-check-certificate https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
export MINIO_ACCESS_KEY="$ACCESS_KEY"
export MINIO_SECRET_KEY="$SECRET_KEY"
export MINIO_BROWSER="$MINIO_BROWSER_STATUS"
./minio server --address :$PORT /mnt/minio/data
