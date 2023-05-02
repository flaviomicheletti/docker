# Composer


## What would be the docker commands equivalent to `docker-compose up -d`?

Build the image (if necessary):

    docker build -t your-image-name /path/to/Dockerfile

Create a network:

    docker network create your-network-name

Start the container:

    docker run -d --name your-container-name \
    -e POSTGRES_USER=yourusername \
    -e POSTGRES_PASSWORD=yourpassword \
    -e POSTGRES_DB=yourdatabasename \
    -p 5432:5432 \
    --network your-network-name \
    -v your-local-path:/var/lib/postgresql/data \
    your-image-name


## change the username and password of the database

If I run the command `docker-compose up -d` once and after that it decides to 
change the username and password of the database, what should I do to make 
the password change reflect in my database? 

The `--force-recreate` flag recreates the container with the new 
configuration, instead of just restarting the existing container. 

After running the `docker-compose up -d --force-recreate` command, your 
PostgreSQL container should be running with the new username and password, 
and you should be able to connect to it using a PostgreSQL client using the 
new credentials.

- https://stackoverflow.com/a/32618288/4026574

    docker-compose up --force-recreate

    docker-compose rm -f
    docker-compose pull
    docker-compose up --build -d

Remove possibly previous broken stacks left hanging after an error    

    docker-compose down -v --remove-orphans


## What would be the docker commands equivalent to `docker-compose up -d --force-recreate`?

Stop the running container:

    docker stop your-container-name

Remove the container:

    docker rm your-container-name

Create a network:

    docker network create your-network-name

Start the container with the updated configuration:

    docker run -d --name your-container-name \
    -e POSTGRES_USER=newusername \
    -e POSTGRES_PASSWORD=newpassword \
    -e POSTGRES_DB=yourdatabasename \
    -p 5432:5432 \
    --network your-network-name \
    -v your-local-path:/var/lib/postgresql/data \
    your-image-name



