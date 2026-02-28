FROM dunglas/frankenphp:php8.4.18-bookworm

# System deps
RUN apt-get update && apt-get install -y git unzip zip nodejs npm \
  && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /app
COPY . .

# Install PHP deps (creates /app/vendor)
RUN composer install --no-dev --optimize-autoloader

# Install JS deps (optional; keep if your app uses built assets)
RUN if [ -f package.json ]; then npm ci || npm install; fi

# Permissions for Laravel
RUN mkdir -p storage/framework/{sessions,views,cache,testing} storage/logs bootstrap/cache \
  && chmod -R a+rw storage bootstrap/cache

EXPOSE 8080
ENV PORT=8080

CMD ["sh", "-c", "php artisan migrate --force || true && frankenphp run --config /Caddyfile --adapter caddyfile"]