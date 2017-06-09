FROM php:7-fpm
# Install modules
RUN apt-get update && apt-get install -y \
	libmcrypt-dev  \
	librabbitmq-dev \
	libicu-dev \
	wget \
	mysql-client \
	&& cd /tmp \
	&& wget  https://github.com/alanxz/rabbitmq-c/releases/download/v0.8.0/rabbitmq-c-0.8.0.tar.gz \
	&& tar xvf rabbitmq-c-0.8.0.tar.gz \
	&& cd  rabbitmq-c-0.8.0 \
    && ./configure  \
    && make && make install \
    && pecl install amqp \
    && docker-php-ext-enable amqp \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install iconv \
	&& docker-php-ext-install mcrypt \
	&& docker-php-ext-install intl \
	&& docker-php-ext-install opcache \
	&& docker-php-ext-install mbstring \
	&& docker-php-ext-install bcmath \
	&& pecl install redis \
	&& docker-php-ext-enable redis
CMD ["php-fpm"]