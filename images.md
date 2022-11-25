# Cheat Sheet Images

Building a Dockerfile from a different folder

    docker build -t <tag-name> -f <file-name> .
    docker build . -t my-web-app -f subfolder/Dockerfile
    docker build -f other-Dockerfile .

To remove a Docker image

    docker image ls

Remove the unwanted image(s)

    docker image rm [image-id1] [image_-d2]

Rename image

    docker image tag [image-id] [new-name]:[new-tag] 
    // obs: the new-tag is usually [latest]

Remove all resources

    docker image rm $(docker image ls -aq)

    docker image prune
