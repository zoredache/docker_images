FROM debian:buster-slim

RUN apt-get update ; \
    apt-get install tini; \
    apt-get -yq install \
	apache2 \
	libapache2-mod-php \
	php \
	php-bz2 \
	php-cli \
	php-common \
	php-curl \
	php-dev \
	php-enchant \
	php-gd \
	php-gmp \
	php-intl \
	php-json \
	php-mysql \
	php-opcache \
	php-phpdbg \
	php-pspell \
	php-readline \
	php-recode \
	php-tidy \
	php-xsl \
	php-zip ; \
    a2enmod rewrite actions include

EXPOSE 80

