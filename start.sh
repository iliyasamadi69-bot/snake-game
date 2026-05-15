#!/bin/bash

echo "🚀 Starting G2Ray PRO+..."

chmod +x app/*.sh

bash app/security.sh
bash app/core.sh
bash app/codespace-link.sh
bash app/panel.sh
