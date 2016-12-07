FROM php:7.1.0-cli
MAINTAINER Foundation DevOps foundation-devops@realpage.com

# Locally docker mounts files as user 1000
# Adding this user to www-data allows php
# to write to these files
RUN usermod -u 1000 www-data && \
    usermod -G staff www-data

RUN apt-get update \

    # install extensions needed for Laravel
    && apt-get install -y libmcrypt-dev libpq5 libpq-dev \
    && docker-php-ext-install mcrypt mbstring pgsql pdo_pgsql \

    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
