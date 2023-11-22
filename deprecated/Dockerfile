ARG PHP_VERSION

FROM php:$PHP_VERSION
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list

RUN apt-get -y update && \
    apt-get -y --no-install-recommends install jq gettext git openssh-client rsync zip wget && \
    rm -rf /var/lib/apt/lists/*

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer
