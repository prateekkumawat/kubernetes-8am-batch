FROM ubuntu:latest

# add and update packages
RUN apt-get update && apt install -y apache2 php

WORKDIR /var/www/html/ 
COPY src/ /var/www/html/
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
EXPOSE 80