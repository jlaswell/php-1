# RealPage Official Docker Image for PHP

[![Build Status](https://travis-ci.org/realpage/php.svg?branch=master)](https://travis-ci.org/realpage/php) 
[![Docker Pulls](https://img.shields.io/docker/pulls/realpage/php.svg)](https://hub.docker.com/r/realpage/php)

## Supported tags
- [`7.0.5-cli`, `7.0-cli`, `7-cli`, `cli` (*7.0/Dockerfile*)](https://hub.docker.com/r/realpage/php/) 
[![Image Layers](https://img.shields.io/imagelayers/layers/realpage/php/7.0-cli.svg)](https://imagelayers.io/?images=realpage/php:7.0-cli)
- [`7.0.5-fpm`, `7.0-fpm`, `7-fpm`, `fpm` (*7.0/fpm/Dockerfile*)](https://hub.docker.com/r/realpage/php/) 
[![Image Layers](https://img.shields.io/imagelayers/layers/realpage/php/7.0-fpm.svg)](https://imagelayers.io/?images=realpage/php:7.0-fpm)

## FAQs
**We need an extension that isn't included in this image? How do I get an image with the extension I need?**
To adjust the base images to suit your application's needs, we recommend creating a `Dockerfile` that extends this one.  Only commonly used packages within Realpage will be included in this base image.

**How can I request updates to this image**
Long term we plan to automate keeping the PHP version in this image up to date.  In the meantime, if you need updates that aren't here or would like to request an extension or other change to this base image please [create an issue](https://github.com/Realpage/php/issues/new) or pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/realpage/php/issues).

## License
View [license information](http://php.net/license/) for the software contained in this image.

## Supported Docker versions
This image is officially supported on Docker version 1.10.3.
