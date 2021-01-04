![docker-cloud-twitter-card](https://user-images.githubusercontent.com/1257048/95775203-5aa11300-0c98-11eb-9817-e440f1fc4627.png)

# Docker 

https://docs.docker.com/get-started/overview/

Your first container:

    docker run -d -p 80:80 docker/getting-started

### Next

- https://hub.docker.com/_/php/
- https://hub.docker.com/r/phpmyadmin/phpmyadmin/
- https://docs.phpmyadmin.net/pt_BR/latest/setup.html


### Cheat Sheet Containers

List all Docker container

    docker container ls -a

List of all the containers only by their numeric id´s

    docker container ls –aq 

Stop a specifc container

    docker container stop [container_id]

Stop all containers

    docker container stop $(docker container ls –aq)

    or

    docker stop $(docker ps -a -q)

Remove a stopped container

    docker container rm [container_id]

Remove all stopped containers

    docker container rm $(docker container ls –aq)

Remove all Docker Containers.

To wipe Docker clean and start from scratch, enter the command:

    docker container stop $(docker container ls –aq) && docker system prune –af ––volumes

Remove all resources

    docker container prune

### Cheat Sheet Images

To remove a Docker image

    docker image ls

Remove the unwanted image(s)

    docker image rm [image-id1] [image_-d2]

Rename image

    docker image tag [image-id] [new-name]:[new-tag] 
    // obs: the new-tag is usually [latest]

Remove all resources

    docker image prune

### Cheat Sheet Volumes

A list of all available Docker volumes

    docker volume ls

Remove a volume

    docker volume rm [VolumeName]

Remove all resources

    docker volume  prune

### Cheat Sheet Network

A list of all existing Docker networks

    docker network ls

Remove a specific network

    docker network rm [networkID]

Remove all resources

    docker network prune

### Remove All Unused Docker Objects

The prune command automatically removes all resources that aren’t associated with a container. This is a streamlined way to clean up unused images, containers, volumes, and networks.

    docker system prune

__fonte:__ https://phoenixnap.com/kb/remove-docker-images-containers-networks-volumes