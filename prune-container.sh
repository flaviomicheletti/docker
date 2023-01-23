docker stop $(docker ps -a -q)
docker container rm $(docker container ls -qa)
docker container prune
