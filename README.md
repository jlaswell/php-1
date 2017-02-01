# RealPage Official Docker Image for PHP

[![Build Status](https://travis-ci.org/realpage/php.svg?branch=master)](https://travis-ci.org/realpage/php) 
[![Docker Pulls](https://img.shields.io/docker/pulls/realpage/php.svg)](https://hub.docker.com/r/realpage/php)

## Supported tags
- [`7.1.1-cli`, `7.1-cli`, `7-cli`, `cli` (*debian-jessie/cli/Dockerfile*)](https://hub.docker.com/r/realpage/php/) 
[![Image Layers](https://img.shields.io/imagelayers/layers/realpage/php/7.1-cli.svg)](https://imagelayers.io/?images=realpage/php:7.1-cli)
- [`7.1.1-fpm`, `7.1-fpm`, `7-fpm`, `fpm` (*debian-jessie/fpm/Dockerfile*)](https://hub.docker.com/r/realpage/php/) 
[![Image Layers](https://img.shields.io/imagelayers/layers/realpage/php/7.1-fpm.svg)](https://imagelayers.io/?images=realpage/php:7.1-fpm)
- [`7.1.1-alpine`, `7.1-alpine`, `7-alpine`, `alpine` (*alpine/cli/Dockerfile*)](https://hub.docker.com/r/realpage/php/) 
[![Image Layers](https://img.shields.io/imagelayers/layers/realpage/php/7.1-alpine.svg)](https://imagelayers.io/?images=realpage/php:7.1-alpine)
- [`7.1.1-fpm-alpine`, `7.1-fpm-alpine`, `7-fpm-alpine`, `fpm-alpine` (*alpine/fpm/Dockerfile*)](https://hub.docker.com/r/realpage/php/) 
[![Image Layers](https://img.shields.io/imagelayers/layers/realpage/php/7.1-fpm-alpine.svg)](https://imagelayers.io/?images=realpage/php:7.1-fpm-alpine)

## FAQs

**We need an extension that isn't included in this image? How do I get an image with the extension I need?**

To adjust the base images to suit your application's needs, we recommend creating a `Dockerfile` that extends this one.  Only commonly used packages within Realpage will be included in this base image.

**How can I request updates to this image**

This container's version is automatically monitored via [marker](https://github.com/realpage/marker) which creates a new issue when a new version of the base container is released.  If there are other updates you believe would benefit this image, please [create an issue](https://github.com/Realpage/php/issues/new) or pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/realpage/php/issues).

## License
View [license information](http://php.net/license/) for the software contained in this image.
