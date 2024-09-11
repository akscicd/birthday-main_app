FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apache2 git

WORKDIR /var/www/html/

RUN git clone https://github.com/akscicd/birthday-main_app.git

RUN cp -r birthday-main_app/* .

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
