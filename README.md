# RealPage Official Docker Image for PHP

[![Build Status](https://travis-ci.org/realpage/php.svg?branch=master)](https://travis-ci.org/realpage/php) 
[![Docker Pulls](https://img.shields.io/docker/pulls/realpage/php.svg)](https://hub.docker.com/r/realpage/php)

Included in this container:

 * [Composer](https://getcomposer.org) (with [hirak/prestissimo](https://github.com/hirak/prestissimo) for parallel dependency installation)
 * PHP Extensions
   * [mbstring](http://php.net/manual/en/book.mbstring.php)
   * [pdo_pgsql](http://php.net/manual/en/ref.pdo-pgsql.php)
   * [pcntl](http://php.net/manual/en/book.pcntl.php) (cli container only, required for queue workers as of Laravel 5.3)
   
 > If your application will be deployed using nginx, we highly recommend using https://github.com/realpage/fpm-nginx instead of this standalone fpm container.  Running fpm/nginx in separate containers can cause downtime before nginx's internal dns cache has been updated to the new fpm container's location.
   
## FAQs

**We need an extension that isn't included in this image? How do I get an image with the extension I need?**

To adjust the base images to suit your application's needs, we recommend creating a `Dockerfile` that extends this one.  Only commonly used packages within Realpage will be included in this base image.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/realpage/php/issues).

## License
View [license information](http://php.net/license/) for the software contained in this image.
