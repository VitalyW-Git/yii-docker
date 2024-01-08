FROM php:7.4-fpm

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN apt-get update && apt-get install -y git openssl whois mariadb-client zip unzip procps imagemagick pdftk
RUN install-php-extensions \
        soap \
        zip \
        curl \
        bcmath \
        exif \
        gd \
        iconv \
        intl \
        mbstring \
        opcache \
        pdo_mysql \
        pdo_pgsql \
        imagick \
        mongodb \
        xdebug
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/
COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY php.ini /usr/local/etc/php/php.ini
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ARG UID
ARG GID
ARG UNAME

RUN usermod  --uid $UID $UNAME && groupmod --gid $GID $UNAME && usermod -md /home/$UNAME $UNAME && chown -R $UID:$GID /home/$UNAME
USER "${UID}:${GID}"
