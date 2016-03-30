FROM php:7.0.4-fpm
MAINTAINER RealPage DevOps foundation-devops@indatus.com
LABEL version="1.0.0-beta" \
      com.realpage.php.version="7.0.4" \
      com.realpage.php.type="fpm"

# Locally docker mounts files as user 1000
# Adding this user to www-data allows php
# to write to these files
RUN usermod -u 1000 www-data && \
    usermod -G staff www-data

# install extensions needed for Laravel
RUN apt-get update && apt-get install -y libmcrypt-dev libpq5 libpq-dev \
    && docker-php-ext-install mcrypt mbstring pgsql pdo_pgsql \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*