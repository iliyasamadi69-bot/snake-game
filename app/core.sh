#!/bin/bash

UUID=$(cat config/uuid.txt)
PORT=$(cat config/port.txt)

echo "⚙️ Installing V2Ray..."

bash <(curl -Ls https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

cat > config/config.json <<EOF
{
  "inbounds": [{
    "port": $PORT,
    "protocol": "vless",
    "settings": {
      "clients": [{
        "id": "$UUID"
      }]
    },
    "streamSettings": {
      "network": "ws",
      "security": "none"
    }
  }],
  "outbounds": [{
    "protocol": "freedom"
  }]
}
EOF

v2ray -config config/config.json &
echo "✔ V2Ray started on port $PORT"
