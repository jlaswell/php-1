FROM php:7.0.4-fpm
MAINTAINER RealPage DevOps Foundation-Devops@RealPage.com
LABEL version="1.0.0-beta" \
      com.realpage.php.version="7.0.4" \
      com.realpage.php.type="fpm"

# install extensions
RUN apt-get update && apt-get install -y libmcrypt-dev libpq5 libpq-dev \
    && docker-php-ext-install mcrypt mbstring pgsql pdo_pgsql \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*