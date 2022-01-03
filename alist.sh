#!/usr/bin/env sh

# 创建配置文件目录
mkdir data

cat > data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT
}
EOF

./alist -conf data/config.json
