FROM php:7.0.5-alpine
MAINTAINER Foundation DevOps foundation-devops@realpage.com

# app dependencies
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN apk add --update --no-cache "postgresql-dev@edge>9.5" "libpq@edge>9.5" \
    && docker-php-ext-install mcrypt mbstring pgsql pdo pdo_pgsql
