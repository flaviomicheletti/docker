# XAMPP

https://hub.docker.com/r/tomsik68/xampp


    docker pull tomsik68/xampp
    docker run --name myXampp -p 41061:22 -p 41062:80 -d -v ~/my_web_pages:/www tomsik68/xampp


+ http://localhost:41062/www/
+ http://localhost:41062/dashboard/
+ http://localhost:41062/dashboard/phpinfo.php
+ http://localhost:41062/phpmyadmin/
+ http://localhost:41062/phpmyadmi
