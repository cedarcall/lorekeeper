#!/bin/sh
set -e

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
  echo ">>> Running setup-admin-user --auto..."
  if php artisan setup-admin-user --auto; then
    echo ">>> setup-admin-user completed successfully"
  else
    echo ">>> setup-admin-user failed, continuing to hard fallback check"
  fi

  USER_COUNT=$(php artisan tinker --execute="echo \App\\Models\\User\\User::count();" 2>/dev/null | tr -dc '0-9')
  if [ -z "$USER_COUNT" ]; then USER_COUNT=0; fi

  if [ "$USER_COUNT" -eq 0 ]; then
    echo ">>> No users found after setup-admin-user. Running hard fallback admin bootstrap..."
    php artisan tinker --execute="
      \Illuminate\\Support\\Facades\\DB::beginTransaction();
      try {
        $name = env('ADMIN_USER', 'Admin');
        $email = env('ADMIN_EMAIL');
        $password = env('ADMIN_PASSWORD');

        $adminRank = \App\\Models\\Rank\\Rank::orderBy('sort', 'DESC')->first();
        if(!$adminRank) {
          $adminRank = \App\\Models\\Rank\\Rank::create(['name' => 'Admin', 'description' => 'Auto-created admin rank', 'sort' => 1]);
          \App\\Models\\Rank\\Rank::create(['name' => 'Member', 'description' => 'Auto-created member rank', 'sort' => 0]);
        }

        $user = \App\\Models\\User\\User::where('email', $email)->first();
        if(!$user) {
          $user = \App\\Models\\User\\User::create([
            'name' => $name,
            'email' => $email,
            'rank_id' => $adminRank->id,
            'password' => \Illuminate\\Support\\Facades\\Hash::make($password),
            'birthday' => \Carbon\\Carbon::create(1970, 1, 1),
            'has_alias' => 0,
            'email_verified_at' => \Carbon\\Carbon::now(),
          ]);
        }

        \App\\Models\\User\\UserSettings::firstOrCreate(['user_id' => $user->id]);
        \App\\Models\\User\\UserProfile::firstOrCreate(['user_id' => $user->id]);
        \Illuminate\\Support\\Facades\\DB::table('site_settings')->updateOrInsert(
          ['key' => 'admin_user'],
          ['value' => $user->id, 'description' => 'ID of the site\\'s admin user.']
        );
        \Illuminate\\Support\\Facades\\DB::commit();
        echo 'fallback-admin-bootstrap:ok';
      } catch (\\Throwable $e) {
        \Illuminate\\Support\\Facades\\DB::rollBack();
        echo 'fallback-admin-bootstrap:error:' . $e->getMessage();
        throw $e;
      }
    "
  fi
fi

# Start the web server
if [ -f /etc/caddy/Caddyfile ]; then
  exec frankenphp run --config /etc/caddy/Caddyfile
elif [ -f Caddyfile ]; then
  exec frankenphp run --config Caddyfile
else
  exec frankenphp run
fi