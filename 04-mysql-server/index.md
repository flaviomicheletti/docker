# Docker e Mysql Server

https://hub.docker.com/r/mysql/mysql-server/


Baixei a imagem.

    docker pull mysql/mysql-server


Executando a instância.

     docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=1234 -d mysql/mysql-server:latest

Acessando o shell.

    docker exec -it container-teste-mysql bash

Obtive:

    bash-4.2# mysql -uroot -p
    Enter password:

    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 29
    Server version: 8.0.22 MySQL Community Server - GPL

    Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql>