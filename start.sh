#!/bin/sh
# Do NOT use set -e: individual command failures are handled inline
export PORT=${PORT:-8080}

# Skip composer/npm in Docker (already done at build time)
if [ ! -d vendor ]; then
  composer install --no-dev --optimize-autoloader
fi

if [ -f package.json ] && { [ ! -f public/css/app.css ] || [ ! -f public/js/app.js ]; }; then
  npm ci || npm install
  npm run production
fi

# Clear caches first to pick up fresh env
php artisan config:clear || true
php artisan cache:clear || true
php artisan route:clear || true
php artisan view:clear || true
php artisan storage:link || true

# Run migrations and bootstrap
php artisan migrate --force
php artisan add-site-settings
php artisan add-text-pages
php artisan add-world-expansion
php artisan seed-production-data
php artisan copy-default-images

# Create admin user automatically if env vars are set and no users exist
if [ -n "$ADMIN_EMAIL" ] && [ -n "$ADMIN_PASSWORD" ]; then
  echo ">>> Running force-create-admin..."
  php artisan force-create-admin || echo ">>> force-create-admin exited with error (check logs above)"
fi

# Start the web server
if [ -f /etc/caddy/Caddyfile ]; then
  exec frankenphp run --config /etc/caddy/Caddyfile
elif [ -f Caddyfile ]; then
  exec frankenphp run --config Caddyfile
else
  exec frankenphp run
fi