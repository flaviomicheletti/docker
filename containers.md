# Cheat Sheet Containers


## List all Docker container

List of all the containers only by their numeric id´s

The first command will list all the running Docker containers on your system.

    docker ps

The second command with `-a` option includes all containers (running and stopped).

    docker container ls -a

The third command will list all the container IDs for all the containers, 
whether they're running or stopped. The `-q` option stands for "quiet" and 
suppresses extra information.

    docker container ls -aq

- https://docs.docker.com/engine/reference/commandline/container_ls/

## Stop a specifc container

This command will stop a specific container based on its container ID.

    docker container stop [container_id]


## Stop all containers

These commands stop all running containers on your system. 

They use `$(docker ps -a -q)` or `$(docker container ls -aq)` to get a 
list of all container IDs, which is then passed to the `docker stop` command.

    docker stop $(docker ps -a -q)
    // or
    docker container stop $(docker container ls –aq)`


## Provides information on the data directory volume

This command provides detailed information about a specific container. 

    docker inspect [container_id]

It can be used to view details about the container's data directory 
volume, network settings, and other metadata.


## Remove a stopped container

This command removes a stopped container based on its container ID.

docker container rm [container_id]


## Remove all stopped containers

This command removes all stopped containers on your system. 

It uses `$(docker container ls -qa)` to get a list of all container IDs and 
passes them to the `docker container rm` command.

    docker container rm $(docker container ls -qa)


## Remove all Docker Containers.

To wipe Docker clean and start from scratch, enter the command:

    docker container stop $(docker container ls -aq) && docker system prune –af ––volumes

This command stops all running containers on your system and then removes all 
unused Docker resources, including stopped containers, unused volumes, and 
unused networks. The `&&` operator runs the two commands together, 
and `--volumes` option removes all volumes as well.


## Remove all resources

    docker container prune

This command removes all stopped containers, unused volumes, and unused 
networks. It is a shorter way to remove unused resources compared to `docker system prune`.`

- https://docs.docker.com/engine/reference/commandline/system_prune/

