FROM php:7.4 as build
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get update
RUN apt-get install -y wget libpng-dev libjpeg-dev libxml2-dev zip libzip-dev
RUN docker-php-ext-install -j$(nproc) gd soap zip exif bcmath
