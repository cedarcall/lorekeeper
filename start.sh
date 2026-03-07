#!/bin/sh

set -e

composer install --no-dev --optimize-autoloader

# Build frontend assets when they are missing (common on first launch).
if [ -f package.json ] && { [ ! -f public/css/app.css ] || [ ! -f public/js/app.js ]; }; then
	npm ci || npm install
	npm run production
fi

php artisan config:cache
php artisan route:cache
php artisan view:cache

php artisan migrate --force

# Ensure FrankenPHP uses the configured public docroot so /css/* resolves.
if [ -f /etc/caddy/Caddyfile ]; then
	exec frankenphp run --config /etc/caddy/Caddyfile
elif [ -f Caddyfile ]; then
	exec frankenphp run --config Caddyfile
else
	exec frankenphp run
fi