FROM ubuntu:latest

# Setup your custom intruction for manage web services
RUN apt-get update && apt install apache2 -y 
WORKDIR /var/www/html/
COPY src/ /var/www/html/ 

#RUN echo "apachectl -k start" >> /root/.bashrc
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
EXPOSE 80 