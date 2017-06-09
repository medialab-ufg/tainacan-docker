FROM wordpress

VOLUME ["/var/www/html", "/var/www/html/wp-content/themes"]

RUN apt-get update
RUN apt-get install -y git

WORKDIR /var/www/html/wp-content/themes

RUN git clone https://github.com/medialab-ufg/tainacan.git

WORKDIR /var/www/html

EXPOSE 80


