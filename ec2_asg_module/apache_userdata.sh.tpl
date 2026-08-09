#!/bin/bash

set -e

apt-get update -y
apt-get install -y apache2

cat > /var/www/html/index.html <<'EOF'
<html>
  <body>
    <h1>${body_note}</h1>
  </body>
</html>
EOF

systemctl enable apache2
systemctl start apache2
