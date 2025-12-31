# setup base image for php app 
FROM php:8.2-apache

# add mysql extension in php image
RUN docker-php-ext-install mysqli

# copy php code 
COPY src/ /var/www/html/

# expose port 
EXPOSE 80