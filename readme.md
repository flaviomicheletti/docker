![docker-cloud-twitter-card](https://user-images.githubusercontent.com/1257048/95775203-5aa11300-0c98-11eb-9817-e440f1fc4627.png)

# Docker 

https://docs.docker.com/get-started/overview/

Your first container:

    docker run -d -p 80:80 docker/getting-started

### Next

- https://hub.docker.com/_/php/
- https://hub.docker.com/r/phpmyadmin/phpmyadmin/


### Cheat Sheet Containers

    // list all Docker container
    docker container ls -a

    // list of all the containers only by their numeric id´s
    docker container ls –aq 

    // stop a specifc container
    docker container stop [container_id]

    // stop all containers
    docker container stop $(docker container ls –aq)

    // remove a stopped container
    docker container rm [container_id]

    // remove all stopped containers
    docker container rm $(docker container ls –aq)

    // remove all Docker Containers
    // To wipe Docker clean and start from scratch, enter the command:
    docker container stop $(docker container ls –aq) && docker system prune –af ––volumes

    // remove all resources
    docker container prune

### Cheat Sheet Images

    // to remove a Docker image
    docker image ls

    // remove the unwanted image(s)
    docker image rm [image-id1] [image_-d2]

    // remove all resources
    docker image prune

### Cheat Sheet Volumes

    // a list of all available Docker volumes
    docker volume ls

    // remove a volume
    docker volume rm [VolumeName]

    // remove all resources
    docker volume  prune

### Cheat Sheet Network

    // a list of all existing Docker networks
    docker network ls

    // remove a specific network
    docker network rm [networkID]

    // remove all resources
    docker network prune

### Remove All Unused Docker Objects

The prune command automatically removes all resources that aren’t associated with a container. This is a streamlined way to clean up unused images, containers, volumes, and networks.

    docker system prune

__fonte:__ https://phoenixnap.com/kb/remove-docker-images-containers-networks-volumes