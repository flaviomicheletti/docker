#


  sudo docker-compose up -d

  sudo docker exec -it mongodb bash

  docker-compose down 


## Interacting with the MongoDB container

  use food
  db.createCollection("fruits")

  > db.createCollection("fruits")
  {
          "ok" : 0,
          "errmsg" : "command create requires authentication",
          "code" : 13,
          "codeName" : "Unauthorized"
  }



##

docker compose and mongodb

https://www.bmc.com/blogs/mongodb-docker-container/
