FROM php:8.1-cli

WORKDIR /var/www/html

COPY . .

EXPOSE 8000

CMD ["php","-S","0.0.0.0:8000","index.php"]