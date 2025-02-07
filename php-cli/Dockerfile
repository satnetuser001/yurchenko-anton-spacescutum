# base docker image
FROM php:8.3.16-cli

# install PHP extension for MariaDB: pdo_mysql
RUN docker-php-ext-install pdo_mysql

# set and create a working directory in image
WORKDIR /app

# run artisan server on port 8000 in container
ENTRYPOINT ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]