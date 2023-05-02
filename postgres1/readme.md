# Postgres

## Sample

    docker run --name my-postgres \
    -e POSTGRES_USER=john \
    -e POSTGRES_PASSWORD=1234 \
    -e POSTGRES_DB=OnlineStoreDB \
    -p 5438:5432 \
    --network dev \
    -v ./data:/var/lib/postgresql/data \
    postgres

What about the last world in the lat line `postgres`? 

The last word "postgres" in the command refers to the Docker image that the 
container will be based on. 

In this case, the "postgres" image is a pre-built Docker image that contains 
the PostgreSQL database management system. When the "docker run" command is 
executed, it pulls the "postgres" image from the Docker registry (if it is 
not already available on the local machine) and uses it to create a new 
container. The container runs an instance of PostgreSQL inside it, which can 
be accessed and managed using the specified parameters and configurations.

## Create tables and insert data

    docker run -it --rm \
    --network dev \
    -v ./sample1.sql:/sql/sample1.sql \
    postgres \
    sh -c 'psql -h my-postgres -U john -d OnlineStoreDB -f /sql/sample1.sql'

## Accessing through psql

    docker run -it --rm \
    --network dev \
    postgres \
    psql -h my-postgres -U john -d OnlineStoreDB

## Previous Notes

    docker run --name my-postgres -e POSTGRES_PASSWORD=1234 -p 5438:5432 -d postgres

![image](https://user-images.githubusercontent.com/1257048/212495559-344e28a9-ac3c-485c-9e85-e42fbc256d4e.png)

See also https://gist.github.com/jessepinkman9900/3f65e33ffd84abc84bd331d464d55c11
