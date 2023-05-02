# Postgres

    docker run --name postgres1 -e POSTGRES_PASSWORD=1234 -p 5438:5432 -d postgres

![image](https://user-images.githubusercontent.com/1257048/212495559-344e28a9-ac3c-485c-9e85-e42fbc256d4e.png)


## In more dateils...

    docker run --name your-container-name \
    -e POSTGRES_USER=yourusername \
    -e POSTGRES_PASSWORD=yourpassword \
    -e POSTGRES_DB=yourdatabasename \
    -p 5438:5432 \
    --network your-network-name \
    -v your-local-path:/var/lib/postgresql/data \
    your-image-name

See also https://gist.github.com/jessepinkman9900/3f65e33ffd84abc84bd331d464d55c11


## Sample

    docker run --name postgres1 \
    -e POSTGRES_USER=john \
    -e POSTGRES_PASSWORD=1234 \
    -e POSTGRES_DB=nothing \
    -p 5438:5432 \
    --network dev \
    -v ./data:/var/lib/postgresql/data \
    postgres


## Create tables and insert data

    docker run -it --rm \
        --network dev \
        -v ./createdb.sql:/sql/createdb.sql \
        postgres \
        sh -c 'psql -h postgres1 -U john -d nothing -f /sql/createdb.sql'

    docker run -it --rm \
        --network dev \
        -v ./data.sql:/sql/data.sql \
        postgres \
        sh -c 'psql -h postgres1 -U john -d nothing -f /sql/data.sql'


## Accessing through psql


    docker run -it --rm \
        --network dev \
        postgres \
        psql -h postgres1 -U john -d nothing