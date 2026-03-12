FROM moodlehq/moodle-php-apache:8.2

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    git unzip

COPY . /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
