# Postegres

You would then build the Docker image using the following command:

    docker build -t postgre3 .

And then start a container using the following command:

    docker run --name postgres3 -p 5438:5432 -d postgre3

    docker run -d --name postgres3 \
    -p 5438:5432 \
    --network dev \
    -v ./data:/var/lib/postgresql/data \
    postgre3

## Load PostgreSQL Sample Database

- https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/
- https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/


create database using psql:

    docker exec -it postgres3 psql -U john -d sample1
    CREATE DATABASE dvdrental;
    exit

copy data sample:

here is my file `/home/flavio/Downloads/dvdrental.tar`

    docker cp /home/flavio/Downloads/dvdrental.tar postgres3:/tmp/

use the pg_restore tool to load data into the dvdrental database:

    docker exec -it postgres3 pg_restore -U john -d dvdrental /tmp/dvdrental.tar

If you receive the message `ERROR: role "postgres" does not exist` you must 
create a user as shown below:

    docker exec -it postgres3 psql -U john -d dvdrental -c "CREATE USER postgres WITH SUPERUSER PASSWORD '1234';"



