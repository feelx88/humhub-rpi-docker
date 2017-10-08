FROM arm32v7/php:apache
RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev
RUN docker-php-ext-install curl 
RUN docker-php-ext-install mbstring 
RUN docker-php-ext-install pdo_mysql
RUN apt-get install -y zlib1g-dev 
RUN docker-php-ext-install zip 
RUN docker-php-ext-install exif 
RUN apt-get install -y libicu-dev
RUN docker-php-ext-install intl 
RUN docker-php-ext-install fileinfo
RUN apt-get install -y libgd-dev
RUN docker-php-ext-install gd
