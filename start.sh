#!/bin/sh
# Do NOT use set -e: individual command failures are handled inline
export PORT=${PORT:-8080}
echo ">>> start.sh v2 running at $(date)"

run_step() {
  STEP_NAME="$1"
  shift
  echo ">>> [start.sh] BEGIN: ${STEP_NAME}"
  "$@" 2>&1
  RC=$?
  echo ">>> [start.sh] END: ${STEP_NAME} (exit ${RC})"
  return $RC
}

# Skip composer/npm in Docker (already done at build time)
if [ ! -d vendor ]; then
  composer install --no-dev --optimize-autoloader
fi

if [ -f package.json ] && { [ ! -f public/css/app.css ] || [ ! -f public/js/app.js ]; }; then
  npm ci || npm install
  npm run production
fi

# Create Laravel framework storage directories (volume mount wipes these out)
mkdir -p storage/framework/{sessions,views,cache/data,testing}
mkdir -p storage/logs
mkdir -p bootstrap/cache
chmod -R a+rw storage bootstrap/cache

# Clear caches first to pick up fresh env
run_step "artisan config:clear" php artisan config:clear || true
run_step "artisan cache:clear" php artisan cache:clear || true
run_step "artisan route:clear" php artisan route:clear || true
run_step "artisan view:clear" php artisan view:clear || true
run_step "artisan storage:link" php artisan storage:link || true

# Ensure image directories exist
mkdir -p storage/app/public/images/characters
mkdir -p storage/app/public/images/character-updates
mkdir -p storage/app/public/images/avatars
chmod -R a+rw storage/app/public/images

# Run migrations and bootstrap
run_step "artisan migrate --force" php artisan migrate --force || true
run_step "artisan add-site-settings" php artisan add-site-settings || true
run_step "artisan add-text-pages" php artisan add-text-pages || true
run_step "artisan add-world-expansion" php artisan add-world-expansion || true
if [ ! -f storage/.production-seeded-flag ]; then
  run_step "artisan seed-production-data" php artisan seed-production-data || true
  run_step "artisan copy-default-images" php artisan copy-default-images || true
  date > storage/.production-seeded-flag || true
else
  echo ">>> [start.sh] Skipping one-time production seeding (flag present)"
fi

# Create admin user automatically (command handles env var checks internally)
echo ">>> About to run force-create-admin..."
run_step "artisan force-create-admin" php artisan force-create-admin || true
echo ">>> force-create-admin block finished."

# Start the web server
if [ -f /etc/caddy/Caddyfile ]; then
  exec frankenphp run --config /etc/caddy/Caddyfile
elif [ -f Caddyfile ]; then
  exec frankenphp run --config Caddyfile
else
  exec frankenphp run
fi