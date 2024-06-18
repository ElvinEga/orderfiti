#!/usr/bin/env bash
echo "Running composer"
composer install --no-dev --working-dir=/var/www/html

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

php artisan optimize

php artisan storage:link

npm run dev





#echo "Running migrations..."
#php artisan migrate --force
#
#echo "Publishing cloudinary provider..."
#php artisan vendor:publish --provider="CloudinaryLabs\CloudinaryLaravel\CloudinaryServiceProvider" --tag="cloudinary-laravel-config"
