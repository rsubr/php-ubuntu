FROM ubuntu:bionic
LABEL Author="Raja Subramanian" Description="A comprehensive docker image to run PHP-7.2 cli applications like composer, wp-cli, drush, etc"


# Stop dpkg-reconfigure tzdata from prompting for input
ENV DEBIAN_FRONTEND=noninteractive

# Install php7-cli
RUN apt-get update && \
    apt-get -y install \
        php-cli \
        php-curl \
        php-mbstring \
        php-gd \
        php-mysql \
        php-json \
        php-mime-type \
        php-tidy \
        php-intl && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER root

ENTRYPOINT ["/bin/bash", "-c"]
