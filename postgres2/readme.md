# Postegres

You would then build the Docker image using the following command:

    docker build -t postgres .

And then start a container using the following command:

    docker run --name my-postgres -p 5438:5432 -d postgres

    docker run -d --name my-postgres \
    -p 5438:5432 \
    --network dev \
    -v ./data:/var/lib/postgresql/data \
    postgres

What about the last world in the lat line `postgres`? 

For both commands, the last word "postgres" in the command refers to the 
Docker image that the container will be based on. 