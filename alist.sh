#!/usr/bin/env sh

# 创建配置文件目录
mkdir data

cat > data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "database": {
    "type": "sqlite3",
    "port": 0,
    "table_prefix": "x_",
    "db_file": "data/data.db"
  }
}
EOF

./alist -conf data/config.json
