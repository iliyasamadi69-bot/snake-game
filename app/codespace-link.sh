#!/bin/bash

UUID=$(cat config/uuid.txt)
PORT=$(cat config/port.txt)

CODESPACE_URL=$(printenv CODESPACE_NAME)

echo ""
echo "🌐 Codespace Info:"
echo "Name: $CODESPACE_URL"

echo ""
echo "👉 Go to Ports tab and make port $PORT public!"
echo ""

echo "🎯 Your VLESS Config (use after public port):"
echo "vless://$UUID@YOUR-CODESPACE-URL:$PORT?type=ws#G2Ray-Pro+"
