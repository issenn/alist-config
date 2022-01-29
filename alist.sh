#!/usr/bin/env sh

# 创建配置文件目录
mkdir -p /opt/alist/data/

cat > /opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": ${PORT},
  "assets": "${ASSETS}",
  "database": {
    "type": "${DATABASE_TYPE}",
    "user": "${DATABASE_USER}",
    "password": "${DATABASE_PASSWORD}",
    "host": "${DATABASE_HOST}",
    "port": ${DATABASE_PORT},
    "name": "${DATABASE_NAME}",
    "ssl_mode": "${DATABASE_SSL_MODE}",
    "table_prefix": "x_",
    "db_file": "/opt/alist/data/data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": ${CACHE_EXPIRATION},
    "cleanup_interval": ${CLEANUP_INTERVAL}
  }
}
EOF

cd /opt/alist
./alist -conf data/config.json
