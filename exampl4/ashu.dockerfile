FROM centos
MAINTAINER ashutoshh
RUN dnf install httpd -y
WORKDIR /var/www/html/
COPY webapp .
EXPOSE 80
ENTRYPOINT  httpd -DFOREGROUND
