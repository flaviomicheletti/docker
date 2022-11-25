# Remove All Unused Docker Objects

The prune command automatically removes all resources that aren’t associated with a container. This is a streamlined way to clean up unused images, containers, volumes, and networks.

    docker system prune

__fonte:__ https://phoenixnap.com/kb/remove-docker-images-containers-networks-volumes


    docker system prune 
    docker container stop $(docker container ls -qa)
    docker container rm $(docker container ls -qa)
    docker container prune
    docker image rm $(docker image ls -aq)
    docker image prune 