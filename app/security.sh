#!/bin/bash

echo "🔒 Generating secure UUID..."

UUID=$(cat /proc/sys/kernel/random/uuid)
echo $UUID > config/uuid.txt

PORT=$((RANDOM%10000+20000))
echo $PORT > config/port.txt

echo "✔ Security initialized"
