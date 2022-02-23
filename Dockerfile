FROM php:7.4

RUN apt-get -y update && \
    apt-get -y --no-install-recommends install gettext git openssh-client rsync zip wget && \
    rm -rf /var/lib/apt/lists/*

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
