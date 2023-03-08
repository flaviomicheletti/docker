# Docker and Apache

Following this tutorial https://hub.docker.com/_/httpd

    docker pull httpd

Create folder `public-html/` and put your html files here.

Run...

    docker build -t my-apache2 .

    docker run -dit --name my-running-app -p 8080:80 my-apache2



