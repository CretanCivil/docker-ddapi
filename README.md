# docker-ddapi

docker-compose 跑ddapi 
php 7.0
nginx

# 安装

```
git clone https://github.com/leapar/ddapi
```

# 在ddapi目录下执行compose install

# 在ddapi目录修改.env文件

```
APP_ENV=local
APP_DEBUG=true
APP_KEY=
APP_TIMEZONE=PRC

DB_CONNECTION=mysql
DB_HOST=172.29.231.177
DB_PORT=3306
DB_DATABASE=apmsys
DB_USERNAME=root
DB_PASSWORD=Wan0926
DB_TIMEZONE=+08:00

CACHE_DRIVER=redis
QUEUE_DRIVER=rabbitmq

RABBITMQ_HOST=172.29.231.70
RABBITMQ_PORT=5672
RABBITMQ_LOGIN=admin
RABBITMQ_PASSWORD=admin

REDIS_HOST=172.29.231.177
REDIS_PASSWORD=123456
REDIS_PORT=6379
```

# 运行

#export WEB_PATH=/Users/php/ddapi
#$ docker-compose up          # WEB_PATH will be /Users/wangxiaohua/php/ddapi

```
export WEB_PATH=/Users/php/ddapi
docker-compose up -d
```
