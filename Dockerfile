FROM dunglas/frankenphp:php8.4.18-bookworm

# System deps + PHP extensions needed for MySQL (pdo_mysql) and image generation (gd)
RUN apt-get update && apt-get install -y \
    git unzip zip \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    nodejs npm \
    default-mysql-client \
  && docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-install pdo_mysql gd \
  && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /app
COPY . .
COPY Caddyfile /etc/caddy/Caddyfile
COPY docker/php.ini /usr/local/etc/php/conf.d/zz-custom.ini

# Install PHP deps (creates /app/vendor)
# --no-scripts avoids running artisan during image build
RUN composer install --no-dev --optimize-autoloader --no-scripts

# Install and build frontend assets for production
RUN if [ -f package.json ]; then npm ci || npm install; npm run production; fi

# Permissions for Laravel
RUN mkdir -p storage/framework/{sessions,views,cache,testing} storage/logs bootstrap/cache \
  && chmod -R a+rw storage bootstrap/cache

EXPOSE 8080

CMD ["sh", "/app/start.sh"]