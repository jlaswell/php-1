FROM php:7.1.1-alpine
MAINTAINER Foundation DevOps foundation-devops@realpage.com

# app dependencies
RUN apk add --update --no-cache \
    "postgresql-dev>9.5" \
    "libpq>9.5" \
&& docker-php-ext-install \
    mbstring \
    pdo \
    pdo_pgsql \
    pgsql \

    # needed for forking processes in laravel queues as of Laravel 5.3
    pcntl
