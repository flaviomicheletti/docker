# Publish

About parameter `--publish`


### Example 1

    docker run --publish 8000:8080 --detach --name bb bulletinboard:1.0

`--publish` asks Docker to forward traffic incoming on the host’s port 8000 to the container’s port 8080

Visit your application in a browser at localhost:8000


### Example 2

Map TCP port 80 in the container to port 8080 on the Docker host.

    -p 8080:80


### Example 3

If I run a very simple application with the command... 

    docker run -p 8080:3000 my-image
    
...whatever service running on my container on 3000 will be available on my host on 8080


### Example 4

You can use -p options to publish single ports. For example, if you want the container port 5000 
to be available on your localhost 8000, you’d need to specify

    docker run -p localhost:8000:5000 # and so on

This will work even if your Dockerfile does not mention anything about `EXPOSE 5000`.


### See too

- https://docs.docker.com/engine/reference/builder/#expose
- https://docs.docker.com/config/containers/container-networking/
- https://www.baeldung.com/ops/docker/expose-vs-publish
- https://vsupalov.com/docker-expose-ports/
