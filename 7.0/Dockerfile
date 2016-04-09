FROM php:7.0.5-cli
MAINTAINER Foundation DevOps foundation-devops@realpage.com
LABEL version="1.0.0-beta" \
      com.realpage.composer.version="1.0.0" \
      com.realpage.php.version="7.0.5" \
      com.realpage.php.type="cli"

# Locally docker mounts files as user 1000
# Adding this user to www-data allows php
# to write to these files
RUN usermod -u 1000 www-data && \
    usermod -G staff www-data

# install extensions needed for Laravel
RUN apt-get update && apt-get install -y libmcrypt-dev libpq5 libpq-dev \
    && docker-php-ext-install mcrypt mbstring pgsql pdo_pgsql \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

    # Add composer
    && php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php \
    && php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === '7228c001f88bee97506740ef0888240bd8a760b046ee16db8f4095c0d8d525f2367663f22a46b48d072c816e7fe19959') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');"
