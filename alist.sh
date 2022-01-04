#!/usr/bin/env sh

# 创建配置文件目录
mkdir data

cat > data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": ${PORT},
  "local": false,
  "database": {
    "type": "${DATABASE}",
    "user": "${DATABASE_USER}",
    "password": "${DATABASE_PASSWORD}",
    "host": "${DATABASE_HOST}",
    "port": ${DATABASE_PORT},
    "name": "${DATABASE_NAME}",
    "table_prefix": "x_",
    "db_file": "data/data.db"
  }
}
EOF

./alist -conf data/config.json
