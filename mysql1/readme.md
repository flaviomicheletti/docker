# mysql/mysql-server

- https://hub.docker.com/r/mysql/mysql-server/
- https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/docker-mysql-getting-started.html

Downloading a MySQL Server Docker Image.

    docker pull mysql/mysql-server

Starting a MySQL Server Instance.

     docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=1234 -d mysql/mysql-server:latest

Connecting to MySQL Server from within the Container.

    docker exec -it my-mysql bash

    shell>     
    bash-4.2#  mysql -u root -p

    // or
    docker exec -it my-mysql mysql -u root -p

Result:

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


### Conectando

    mysql>

    CREATE USER 'developer'@'localhost' IDENTIFIED BY '1234';
    CREATE USER 'developer'@'%' IDENTIFIED BY '1234';

    GRANT ALL ON *.* TO 'developer'@'localhost';
    GRANT ALL ON *.* TO 'developer'@'%';

    FLUSH PRIVILEGES;

    mysql> SELECT host,user FROM user;
    +-----------+------------------+
    | host      | user             |
    +-----------+------------------+
    | %         | developer        |
    | localhost | developer        |
    | localhost | healthchecker    |
    | localhost | mysql.infoschema |
    | localhost | mysql.session    |
    | localhost | mysql.sys        |
    | localhost | root             |
    +-----------+------------------+

Workbeanch

    Hostname: 127.0.0.1
    Port:     3306
    Username: developer

See too:

+ https://stackoverflow.com/questions/5755819/lost-connection-to-mysql-server-at-reading-initial-communication-packet-syste
+ https://serverfault.com/questions/793058/can-not-access-mysql-docker

