# Description

Docker image containing Ubuntu 20.04 LTS core with PHP CLI 7.4. This image is designed to be used in AWS environments for high density PHP application hosting. WordPress 5.x and Drupal 7.x are tested to work.

Companion docker container for github.com/rsubr/php-apache-ubuntu and intended to run wp-cli, drush, composer, etc.

# Installing from Docker Hub

```
docker pull rsubr/php-ubuntu:focal
```

# Building
To build:
```
docker build --no-cache -t rsubr/php-ubuntu:latest .
```

# Running
## Example 1: Basic usage

Console access to docker instance with WP ROOT mounted and full php-cli tools

```
docker run --name=test --rm -ti -v /srv/example.com/www:/var/www/html:rw rsubr/php-ubuntu:latest bash
```

## Example 2: Updating Wordpress Core

Update a WordPress site in /srv/example.com/www. On the docker host, ensure wp-cli binary is in `/srv/usr-local/bin/wp-cli`.

```
docker run --name=test-wp-update-core --rm -ti -v /srv/usr-local:/usr/local:ro -v /srv/example.com/www:/var/www/html rsubr/php-ubuntu:latest wp-cli --allow-root --path=/var/www/html core update
```

# Notes
This project is nolonger relevant as https://github.com/rsubr/php-apache-ubuntu/ already includes php-cli. This repository and docker image is maintainted for archival purposes only.
