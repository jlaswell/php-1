FROM php:7.1.5-fpm-alpine
MAINTAINER Foundation DevOps foundation-devops@realpage.com

ADD install_composer.php /var/www/html/install_composer.php

RUN apk add --update --no-cache \

        # needed for composer
        git zip unzip \

        # needed for psql
        "postgresql-dev>9.5" \
        "libpq>9.5" \

    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

    # Installing composer
    && php /var/www/html/install_composer.php \

    # Installing common Laravel dependencies
    && docker-php-ext-install mbstring \

        # needed for postgres connectivity
        pdo \
        pdo_pgsql \
        pgsql \

        # needed for forking processes in laravel queues as of Laravel 5.3
        pcntl \

    # For parallel composer dependency installs
    && composer global require hirak/prestissimo \

    && mkdir -p /home/www-data/.composer/cache \

    && chown -R www-data:www-data /home/www-data/ /var/www/html