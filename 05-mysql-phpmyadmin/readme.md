# Docker and Mysql Server with composer

Seguindo este tutorial https://share.atelie.software/subindo-um-banco-de-dados-mysql-e-phpmyadmin-com-docker-642be41f7638


### Parte 1

Podemos subir nossa database com o comando:

    docker-compose up db

Você já pode acessar o banco através de um cli qualuer.

![workbench-connection](https://user-images.githubusercontent.com/1257048/97791900-517bd580-1bb6-11eb-900f-e73a07356894.png)

Abra o Wrokbench (por exemplo) crie uma conexão conforme acima e teste.

![workbench-sucess](https://user-images.githubusercontent.com/1257048/97791929-8ee06300-1bb6-11eb-8812-8f23f0b67e74.png)


### Parte 2

Abra um novo terminal (não feche o anterior )
    
    docker-compose up app
    
http://localhost:8080/




