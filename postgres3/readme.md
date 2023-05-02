# Load PostgreSQL Sample Database

- https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/
- https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/

create database using psql:

    docker exec -it my-postgres psql -U john -d postgres
    CREATE DATABASE dvdrental;
    exit

copy data sample:

here is my file `/home/flavio/Downloads/dvdrental.tar`

    docker cp /home/flavio/Downloads/dvdrental.tar my-postgres:/tmp/

use the pg_restore tool to load data into the dvdrental database:

    docker exec -it my-postgres pg_restore -U john -d dvdrental /tmp/dvdrental.tar

If you receive the message `ERROR: role "postgres" does not exist` you must 
create a user as shown below:

    docker exec -it my-postgres psql -U john -d dvdrental -c "CREATE USER postgres WITH SUPERUSER PASSWORD '1234';"



