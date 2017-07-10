#bin/sh

chown -R www-data:www-data storage
php artisan queue:work --daemon --queue=hostV1