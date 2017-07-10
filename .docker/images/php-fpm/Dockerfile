FROM php:7-fpm
ENV  TIMEZONE Asia/Shanghai
# Install modules
RUN apt-get update && apt-get install -y \
	libmcrypt-dev  \
	librabbitmq-dev \
	libicu-dev \
	wget \
	mysql-client \
	&& cd /tmp \
	&& cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && echo "${TIMEZONE}" > /etc/timezone \
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
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 777 /usr/local/bin/entrypoint.sh
CMD ["entrypoint.sh"]