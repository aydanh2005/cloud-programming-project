#!/bin/bash
set -e

dnf install -y httpd

cat > /var/www/html/index.html <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Aydan's AWS Cloud Project</title>
  <style>
    body { margin: 0; min-height: 100vh; display: grid; place-items: center; font-family: Arial, sans-serif; background: #f4f7fb; color: #14213d; }
    main { max-width: 720px; margin: 24px; padding: 48px; text-align: center; background: white; border-radius: 18px; box-shadow: 0 12px 35px rgba(20,33,61,.12); }
    h1 { color: #ff9900; }
    p { line-height: 1.6; }
    .services { color: #315a8a; font-weight: 700; }
  </style>
</head>
<body>
  <main>
    <h1>Hello from AWS!</h1>
    <p>This highly available webpage was deployed automatically with Terraform.</p>
    <p class="services">CloudFront · Application Load Balancer · Auto Scaling · EC2</p>
    <p>Cloud Programming — Aydan Huseynli — 102209761</p>
  </main>
</body>
</html>
HTML

systemctl enable --now httpd
