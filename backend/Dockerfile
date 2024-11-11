# Dockerfile (backend/Dockerfile)
FROM php:8.1-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

COPY . /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# เอาไว้สำหรับ run เวลา build  ใหม่ๆ ไม่มีอะไรสักอย่าง
# composer create-project --prefer-dist laravel/laravel .

# ถ้าติดปัญหา อ่านเขียน log ไม่ได้ ก็ให้ execute คำสั่งนี้ ใน laravel container
# chmod -R 777 /var/www/html/storage /var/www/html/bootstrap/cache