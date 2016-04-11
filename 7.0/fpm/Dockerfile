FROM php:7.0.5-fpm
MAINTAINER Foundation DevOps foundation-devops@realpage.com
LABEL version="1.0.0-beta" \
      com.realpage.php.version="7.0.5" \
      com.realpage.php.type="fpm"

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