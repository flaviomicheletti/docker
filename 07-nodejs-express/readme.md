# Docker get started with nodejs

Following this tutorial https://nodejs.org/en/docs/guides/nodejs-docker-webapp/


Building your image

    docker build --tag node-express .

Run the image

    docker run --publish 1234:8080 node-express
    // Running on http://0.0.0.0:8080
    // see the script

Open app

    http://localhost:1234/

![result](https://user-images.githubusercontent.com/1257048/97807822-d9f38800-1c41-11eb-9040-64a6eec87ced.png)    

Get container ID

    docker ps

Enter the container

    docker exec -it <container id> /bin/bash

Stop the container

    docker stop <container id>
