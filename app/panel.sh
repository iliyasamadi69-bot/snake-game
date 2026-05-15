#!/bin/bash

PORT_PANEL=3000

echo "📊 Starting simple panel on port $PORT_PANEL..."

cat > panel.html <<EOF
<html>
<head><title>G2Ray Panel</title></head>
<body style="font-family:sans-serif">
<h2>G2Ray PRO+ Panel</h2>
<p>Status: Running ✅</p>
<p>Check your terminal for VLESS link</p>
</body>
</html>
EOF

python3 -m http.server $PORT_PANEL &
echo "✔ Panel running at port $PORT_PANEL"
