# Docker get started with nodejs

Following this tutorial https://docs.docker.com/get-started/nodejs/build-images/

After create your application...

### Test application

Start the server.

    node server.js

Open in browser http://localhost:8000/test or in terminal...

    curl http://localhost:8000/test

Insert information (POST):

    # multiple line
    curl --request POST \
    --url http://localhost:8000/test \
    --header 'content-type: application/json' \
    --data '{
        "msg": "testing"
    }'

    # one line
    curl --request POST --url http://localhost:8000/test --header 'content-type: application/json' --data '{ "msg": "testing" }'


### Build your Node image

Execute in terminal:

    docker build --tag node-docker .


## Run your image as a container

To run an image inside of a container, we use the docker `run command`, it´s requires one parameter 
and that is the image name.

    docker run node-docker

Now, we will testing our app.

    curl http://localhost:8000/test
    curl: (7) Failed to connect to localhost port 8000: Connection refused

Our curl command failed because the connection to our server was refused

OK, stop the container (press ctrl-c).

We’ll use the `--publish` flag (`-p` for short) on the docker run command, your format is...

    --publish [host port]:[container port]

Start the container and expose port 8000 to port 8000 on the host.

    docker run --publish 8000:8000 node-docker

![result](https://user-images.githubusercontent.com/1257048/97806889-b11cc400-1c3c-11eb-8edd-a9095cc62e44.png)
