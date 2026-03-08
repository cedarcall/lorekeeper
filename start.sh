#!/bin/sh

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
php artisan copy-default-images

# Import production data via mysql CLI if the SQL file exists
if [ -f database/seeds/production_data.sql ]; then
  echo "=== Importing production data ==="
  IMPORTED=0
  if command -v mysql >/dev/null 2>&1; then
    echo "Using mysql CLI..."
    if mysql -h "$DB_HOST" -P "${DB_PORT:-3306}" -u "$DB_USERNAME" --password="$DB_PASSWORD" "$DB_DATABASE" < database/seeds/production_data.sql; then
      echo "Production data imported successfully via mysql CLI."
      IMPORTED=1
    else
      echo "mysql CLI import failed (exit code $?)."
    fi
  fi
  if [ "$IMPORTED" = "0" ]; then
    echo "Trying PHP artisan fallback..."
    php artisan seed-production-data --force || echo "PHP fallback also failed."
  fi
  echo "=== Data import complete ==="
else
  echo "No production_data.sql found, skipping data import."
fi

# Start the web server
if [ -f /etc/caddy/Caddyfile ]; then
  exec frankenphp run --config /etc/caddy/Caddyfile
elif [ -f Caddyfile ]; then
  exec frankenphp run --config Caddyfile
else
  exec frankenphp run
fi