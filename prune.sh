docker stop $(docker ps -a -q)
docker container rm $(docker container ls -qa)
docker container prune

docker image rm $(docker image ls -aq)
docker image prune

docker volume prune
docker network prune

docker system prune 

