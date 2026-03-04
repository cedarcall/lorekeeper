FROM dunglas/frankenphp:php8.4.18-bookworm

# System deps + PHP extensions needed for MySQL (pdo_mysql)
RUN apt-get update && apt-get install -y \
    git unzip zip \
    libzip-dev \
    nodejs npm \
  && docker-php-ext-install pdo_mysql \
  && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /app
COPY . .

# Install PHP deps (creates /app/vendor)
# --no-scripts avoids running artisan during image build
RUN composer install --no-dev --optimize-autoloader --no-scripts

# Install and build frontend assets for production
RUN if [ -f package.json ]; then npm ci || npm install; npm run production; fi

# Permissions for Laravel
RUN mkdir -p storage/framework/{sessions,views,cache,testing} storage/logs bootstrap/cache \
  && chmod -R a+rw storage bootstrap/cache

EXPOSE 8080
ENV PORT=8080

# Start web server (do NOT run migrations until DB is set)
CMD ["sh", "-c", "php artisan config:clear || true && php artisan cache:clear || true && php artisan package:discover --ansi || true && php artisan storage:link || true && exec frankenphp run"]