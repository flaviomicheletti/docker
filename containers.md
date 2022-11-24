### Cheat Sheet Containers

List all Docker container

    docker ps
    docker container ls -a

List of all the containers only by their numeric id´s

    docker container ls -aq

https://docs.docker.com/engine/reference/commandline/container_ls/


Stop a specifc container

    docker container stop [container_id]

Stop all containers

    docker container stop $(docker container ls –aq)
    // or
    docker stop $(docker ps -a -q)

Provides information on the data directory volume

    docker inspect [container_id]

Remove a stopped container

    docker container rm [container_id]

Remove all stopped containers

    docker container rm $(docker container ls -qa)

Remove all Docker Containers.

To wipe Docker clean and start from scratch, enter the command:

    docker container stop $(docker container ls -aq) && docker system prune –af ––volumes

Remove all resources

    docker container prune

https://docs.docker.com/engine/reference/commandline/system_prune/
