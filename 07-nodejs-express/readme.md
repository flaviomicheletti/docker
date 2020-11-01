# Docker get started with nodejs

Following this tutorial https://nodejs.org/en/docs/guides/nodejs-docker-webapp/


Building your image

    docker build --tag node-docker .

Run the image

    docker run --publish 1234:8080 node-docker

Open app

    http://localhost:1234/

Get container ID

    docker ps

Enter the container

    docker exec -it <container id> /bin/bash

Stop the container

    docker stop <container id>
