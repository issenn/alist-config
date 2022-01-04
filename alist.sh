#!/usr/bin/env sh

# 创建配置文件目录
mkdir data

cat > data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": ${PORT},
  "local": false,
  "database": {
    "type": "sqlite3",
    "user": "",
    "password": "",
    "host": "",
    "port": 0,
    "name": "",
    "table_prefix": "x_",
    "db_file": "data/data.db"
  }
}
EOF

./alist -conf data/config.json
